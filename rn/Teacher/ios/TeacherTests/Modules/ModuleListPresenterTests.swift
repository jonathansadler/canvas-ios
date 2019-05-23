//
// Copyright (C) 2019-present Instructure, Inc.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//

import Foundation
import XCTest
@testable import Teacher
import TestsFoundation
@testable import Core
import CoreData
import SafariServices

class ModuleListPresenterTests: TeacherTestCase {
    class View: ModuleListViewProtocol {
        var color: UIColor?
        var titleSubtitleView: TitleSubtitleView = TitleSubtitleView.create()
        var navigationItem: UINavigationItem = UINavigationItem(title: "")
        var navigationController: UINavigationController?

        var onReloadModules: (() -> Void)?
        var onReloadCourse: (() -> Void)?
        var refreshing = false

        func reloadModules() {
            onReloadModules?()
        }

        func reloadCourse() {
            onReloadCourse?()
        }

        func showAlert(title: String?, message: String?) {
        }

        var onShowPending: (() -> Void)?
        func showPending() {
            refreshing = true
            onShowPending?()
        }

        var onHidePending: (() -> Void)?
        func hidePending() {
            refreshing = false
            onHidePending?()
        }

        var onScrollToIndexPath: ((IndexPath) -> Void)?
        func scrollToRow(at indexPath: IndexPath) {
            onScrollToIndexPath?(indexPath)
        }

        var reloadedSections: [Int] = []
        func reloadModuleInSection(_ section: Int) {
            reloadedSections.append(section)
        }
    }

    class MockViewController: UIViewController {
        var presented: UIViewController?
        override func present(_ viewControllerToPresent: UIViewController, animated flag: Bool, completion: (() -> Void)? = nil) {
            presented = viewControllerToPresent
        }
    }

    var view: View!
    var presenter: ModuleListPresenter!
    let courseID = "1"

    override func setUp() {
        super.setUp()

        view = View()
        presenter = ModuleListPresenter(env: environment, view: view, courseID: courseID)
    }

    func testReloadModules() {
        let reloaded = expectation(description: "reloaded")
        reloaded.assertForOverFulfill = false
        view.onReloadModules = {
            if self.presenter?.modules.count == 1 {
                reloaded.fulfill()
            }
        }
        presenter.viewIsReady()
        Module.make(["courseID": courseID])

        wait(for: [reloaded], timeout: 9)
    }

    func testModulesOrder() {
        let courseID = "1"
        Module.make([
            "position": 1,
            "name": "Module 1",
            "courseID": courseID,
            "id": "1",
            "itemsRaw": NSOrderedSet(array: [ModuleItem.make(["moduleID": "1"])]),
        ])
        Module.make([
            "position": 2,
            "name": "Module 2",
            "courseID": courseID,
            "id": "2",
            "itemsRaw": NSOrderedSet(array: [ModuleItem.make(["moduleID": "2"])]),
        ])
        Module.make([
            "position": 3,
            "name": "Module 3",
            "courseID": courseID,
            "id": "3",
            "itemsRaw": NSOrderedSet(array: [ModuleItem.make(["moduleID": "3"])]),
        ])
        let reloaded = expectation(description: "reloaded")
        reloaded.assertForOverFulfill = false
        view.onReloadModules = {
            if self.presenter.modules.count == 3 {
                reloaded.fulfill()
            }
        }
        presenter.viewIsReady()
        wait(for: [reloaded], timeout: 9)

        XCTAssertEqual(presenter.modules[0]?.name, "Module 1")
        XCTAssertEqual(presenter.modules[1]?.name, "Module 2")
        XCTAssertEqual(presenter.modules[2]?.name, "Module 3")
    }

    func testModuleItemsOrder() {
        Module.make([
            "itemsRaw": NSOrderedSet(array: [
                ModuleItem.make(["title": "one"]),
                ModuleItem.make(["title": "two"]),
                ModuleItem.make(["title": "three"])
            ]),
        ])
        let items = presenter.modules[0]?.items
        XCTAssertEqual(items?.count, 3)
        XCTAssertEqual(items?[0].title, "one")
        XCTAssertEqual(items?[1].title, "two")
        XCTAssertEqual(items?[2].title, "three")
    }

    func testReloadCourse() {
        let reloaded = expectation(description: "reloaded")
        reloaded.assertForOverFulfill = false
        view.onReloadCourse = {
            if self.presenter.course != nil {
                reloaded.fulfill()
            }
        }
        presenter.viewIsReady()
        Course.make(["id": "1"])

        wait(for: [reloaded], timeout: 9)
    }

    func testReloadCourseColor() {
        let color = UIColor.red
        let reloaded = expectation(description: "course reloaded")
        reloaded.assertForOverFulfill = false
        view.onReloadCourse = {
            if self.presenter.course?.color == color {
                reloaded.fulfill()
            }
        }
        presenter.viewIsReady()
        Course.make(["id": "1"])
        Color.make(["canvasContextID": "course_1", "color": color])

        wait(for: [reloaded], timeout: 9)
    }

    func testRefreshCourseColors() {
        let request = GetCustomColorsRequest()
        let response = APICustomColors(custom_colors: ["course_1": "#000000"])
        api.mock(request, value: response, response: nil, error: nil)
        let reloaded = expectation(description: "color refreshed")
        reloaded.assertForOverFulfill = false
        view.onReloadCourse = {
            if self.presenter.course?.color.hexString == "#000000" {
                reloaded.fulfill()
            }
        }
        presenter.viewIsReady()
        Course.make(["id": "1"])

        wait(for: [reloaded], timeout: 9)
    }

    func testForceRefresh() {
        presenter.viewIsReady()
        let first = expectation(description: "first load")
        first.assertForOverFulfill = false
        let firstRequest = GetModulesRequest(courseID: "1")
        let firstResponse = [APIModule.make(name: "Old Name")]
        api.mock(firstRequest, value: firstResponse, response: nil, error: nil)
        view.onReloadModules = {
            if self.presenter.modules.count == 1, self.presenter.modules[0]?.name == "Old Name" {
                first.fulfill()
            }
        }
        wait(for: [first], timeout: 9)

        let request = GetModulesRequest(courseID: "1")
        let response = [APIModule.make(name: "Refreshed")]
        api.mock(request, value: response, response: nil, error: nil)
        let refreshed = expectation(description: "modules refreshed")
        refreshed.assertForOverFulfill = false
        let pending = expectation(description: "start pending")
        let stopPending = expectation(description: "stop pending")
        view.onShowPending = pending.fulfill
        view.onHidePending = stopPending.fulfill
        view.onReloadModules = {
            if self.presenter.modules.count == 1, self.presenter.modules[0]?.name == "Refreshed" {
                refreshed.fulfill()
            }
        }
        presenter.forceRefresh()
        wait(for: [pending, refreshed, stopPending], timeout: 9)
    }

    func testScrollsToModule() {
        let page1Request = GetModulesRequest(courseID: "1")
        let page1Response = [
            APIModule.make(
                id: "1",
                position: 1
            )
        ]
        let prev = "https://cgnuonline-eniversity.edu/api/v1/courses/1/modules"
        let curr = "https://cgnuonline-eniversity.edu/api/v1/courses/1/modules?page=2"
        let next = "https://cgnuonline-eniversity.edu/api/v1/courses/1/modules?page=3"
        let headers = [
            "Link": "<\(curr)>; rel=\"current\",<>;, <\(prev)>; rel=\"prev\", <\(next)>; rel=\"next\"; count=1",
        ]
        let urlResponse = HTTPURLResponse(url: URL(string: curr)!, statusCode: 200, httpVersion: "HTTP/1.1", headerFields: headers)!
        api.mock(page1Request, value: page1Response, response: urlResponse, error: nil)
        let page2Request = page1Request.getNext(from: urlResponse)!
        let page2Response = [
            APIModule.make(
                id: "2",
                position: 2
            )
        ]
        api.mock(page2Request, value: page2Response, response: nil, error: nil)
        let scrolled = expectation(description: "scrolled to module")
        scrolled.assertForOverFulfill = false
        view.onScrollToIndexPath = { indexPath in
            if indexPath == IndexPath(row: 0, section: 1) {
                scrolled.fulfill()
            }
        }
        let presenter = ModuleListPresenter(env: environment, view: view, courseID: courseID, moduleID: "2")
        presenter.viewIsReady()
        wait(for: [scrolled], timeout: 9)
        XCTAssertTrue(presenter.isSectionExpanded(1))
    }

    func testGetsNextPage() {
        let page1Request = GetModulesRequest(courseID: "1")
        let page1Response = [
            APIModule.make(
                id: "1",
                position: 1
            )
        ]
        let prev = "https://cgnuonline-eniversity.edu/api/v1/courses/1/modules"
        let curr = "https://cgnuonline-eniversity.edu/api/v1/courses/1/modules?page=2"
        let next = "https://cgnuonline-eniversity.edu/api/v1/courses/1/modules?page=3"
        let headers = [
            "Link": "<\(curr)>; rel=\"current\",<>;, <\(prev)>; rel=\"prev\", <\(next)>; rel=\"next\"; count=1",
        ]
        let urlResponse = HTTPURLResponse(url: URL(string: curr)!, statusCode: 200, httpVersion: "HTTP/1.1", headerFields: headers)!
        api.mock(page1Request, value: page1Response, response: urlResponse, error: nil)
        let page2Request = page1Request.getNext(from: urlResponse)!
        let page2Response = [
            APIModule.make(
                id: "2",
                position: 2
            )
        ]
        api.mock(page2Request, value: page2Response, response: nil, error: nil)
        var reloaded = expectation(description: "first page")
        reloaded.assertForOverFulfill = false
        view.onReloadModules = {
            if self.presenter.modules.count == 1 {
                reloaded.fulfill()
            }
        }
        presenter.viewIsReady()
        wait(for: [reloaded], timeout: 9)
        reloaded = expectation(description: "second page")
        reloaded.assertForOverFulfill = false
        view.onReloadModules = {
            if self.presenter.modules.count == 2 {
                reloaded.fulfill()
            }
        }
        presenter.getNextPage()
        wait(for: [reloaded], timeout: 9)
    }

    func testTappedSection() {
        let loaded = expectation(description: "loaded module")
        loaded.assertForOverFulfill = false
        view.onReloadModules = {
            if self.presenter.modules.count == 1 {
                loaded.fulfill()
            }
        }
        presenter.viewIsReady()
        Module.make(["courseID": courseID])
        wait(for: [loaded], timeout: 9)
        XCTAssertTrue(presenter.isSectionExpanded(0))

        // collapse
        presenter.tappedSection(0)
        XCTAssertTrue(view.reloadedSections.contains(0))
        XCTAssertFalse(presenter.isSectionExpanded(0))

        // expand
        presenter.tappedSection(0)
        XCTAssertTrue(view.reloadedSections.contains(0))
        XCTAssertEqual(view.reloadedSections.count, 2)
        XCTAssertTrue(presenter.isSectionExpanded(0))
    }

    func testShowItemExternalTool() {
        let url = URL(string: "https://canvas.instructure.com/courses/1/external_tools/1?sessionless_launch=YES")!
        let item = ModuleItem.make(["typeRaw": ModuleItemType.externalTool("1", url).data])
        let vc = MockViewController()
        presenter.showItem(item, from: vc)
        XCTAssertNotNil(vc.presented as? SFSafariViewController)
    }

    func testShowItemExternalURL() {
        let url = URL(string: "https://google.com")!
        let item = ModuleItem.make(["typeRaw": ModuleItemType.externalURL(url).data])
        let vc = MockViewController()
        presenter.showItem(item, from: vc)
        XCTAssertNotNil(vc.presented as? SFSafariViewController)
    }

    func testShowItem() {
        let url = URL(string: "/courses/1/assignments/2")!
        let item = ModuleItem.make(["url": url])
        presenter.showItem(item, from: MockViewController())
        XCTAssertTrue(router.lastRoutedTo(.course("1", assignment: "2")))
    }
}
