//
// This file is part of Canvas.
// Copyright (C) 2019-present  Instructure, Inc.
//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU Affero General Public License as
// published by the Free Software Foundation, either version 3 of the
// License, or (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU Affero General Public License for more details.
//
// You should have received a copy of the GNU Affero General Public License
// along with this program.  If not, see <https://www.gnu.org/licenses/>.
//

import Foundation
@testable import Teacher
@testable import Core
import TestsFoundation
import XCTest
import SafariServices
import CoreData

class ModuleListViewControllerTests: TeacherTestCase {
    var viewController: ModuleListViewController!
    var save: XCTestExpectation?

    override func setUp() {
        super.setUp()
        viewController = ModuleListViewController.create(env: environment, courseID: "1")
        api.mock(GetCourseRequest(courseID: "1"), value: .make(id: "1", name: "Course 1"))
        UIView.setAnimationsEnabled(false)
    }

    func moduleItemCell(at indexPath: IndexPath) -> ModuleItemCell {
        return viewController.tableView.cellForRow(at: indexPath) as! ModuleItemCell
    }

    func header(forSection section: Int) -> ModuleSectionHeaderView {
        return viewController.tableView.headerView(forSection: section) as! ModuleSectionHeaderView
    }

    func testViewDidLoad() throws {
        api.mock(viewController.colors, value: APICustomColors(custom_colors: ["course_1": "#fff"]))
        let nav = UINavigationController(rootViewController: viewController)
        viewController.view.layoutIfNeeded()
        XCTAssertNotNil(nav.viewControllers.first)
        let footer = try XCTUnwrap(viewController.tableView.tableFooterView as? UILabel)
        XCTAssertEqual(footer.text, "Loading more modules...")
        XCTAssertTrue(footer.isHidden)
        XCTAssertEqual(viewController.titleSubtitleView.title, "Modules")
        XCTAssertEqual(viewController.titleSubtitleView.subtitle, "Course 1")
        XCTAssertEqual(viewController.navigationController?.navigationBar.barTintColor, UIColor(hexString: "#fff"))
    }

    func testTableViewSort() {
        api.mock(GetModulesRequest(courseID: "1", include: [.items, .content_details]), value: [
            .make(id: "1", name: "B", position: 2, published: true, items: [
                .make(id: "1", position: 1, title: "B1"),
                .make(id: "2", position: 2, title: "B2"),
            ]),
            .make(id: "2", name: "A", position: 1, published: false, items: [
                .make(id: "3", position: 3, title: "A1"),
            ]),
        ])
        viewController.view.layoutIfNeeded()
        XCTAssertEqual(header(forSection: 0).title, "A")
        XCTAssertEqual(header(forSection: 0).published, false)
        XCTAssertEqual(moduleItemCell(at: IndexPath(row: 0, section: 0)).nameLabel.text, "A1")
        XCTAssertEqual(header(forSection: 1).title, "B")
        XCTAssertEqual(header(forSection: 1).published, true)
        XCTAssertEqual(moduleItemCell(at: IndexPath(row: 0, section: 1)).nameLabel.text, "B1")
        XCTAssertEqual(moduleItemCell(at: IndexPath(row: 1, section: 1)).nameLabel.text, "B2")
    }

    func testLoadingItems() {
        api.mock(GetModulesRequest(courseID: "1", include: [.items, .content_details]), value: [.make(id: "1", items: nil)])
        let task = api.mock(GetModuleItemsRequest(courseID: "1", moduleID: "1", include: [.content_details]), value: [.make()])
        task.paused = true
        viewController.view.layoutIfNeeded()
        XCTAssertNotNil(viewController.tableView.cellForRow(at: IndexPath(row: 0, section: 0)) as? ModuleListViewController.LoadingCell)
        task.paused = false
        XCTAssertNotNil(viewController.tableView.cellForRow(at: IndexPath(row: 0, section: 0)) as? ModuleItemCell)
    }

    func testEmptyItems() {
        api.mock(GetModulesRequest(courseID: "1", include: [.items, .content_details]), value: [.make(id: "1", items: [])])
        viewController.view.layoutIfNeeded()
        XCTAssertNotNil(viewController.tableView.cellForRow(at: IndexPath(row: 0, section: 0)) as? ModuleListViewController.EmptyCell)
    }

    func testDoesNotScrollWithoutModuleID() {
        api.mock(GetModulesRequest(courseID: "1", include: [.items, .content_details]), value: [
            .make(id: "1", position: 1),
            .make(id: "2", position: 2),
            .make(id: "3", position: 3),
            .make(id: "4", position: 4),
            .make(id: "5", position: 5),
            .make(id: "6", position: 6),
            .make(id: "7", position: 7),
            .make(id: "8", position: 8),
            .make(id: "9", position: 9),
            .make(id: "10", position: 10),
        ])
        let viewController = ModuleListViewController.create(env: environment, courseID: "1", moduleID: nil)
        viewController.view.layoutIfNeeded()
        XCTAssertEqual(viewController.tableView.numberOfSections, 10)
        XCTAssertEqual(viewController.tableView.contentOffset.y, 0)
    }

    func testScrollsToModule() {
        api.mock(GetModulesRequest(courseID: "1", include: [.items, .content_details]), value: [
            .make(id: "1", position: 1),
            .make(id: "2", position: 2),
            .make(id: "3", position: 3),
            .make(id: "4", position: 4),
            .make(id: "5", position: 5),
            .make(id: "6", position: 6),
            .make(id: "7", position: 7),
            .make(id: "8", position: 8),
            .make(id: "9", position: 9),
            .make(id: "10", position: 10),
        ])
        let viewController = ModuleListViewController.create(env: environment, courseID: "1", moduleID: "10")
        viewController.view.layoutIfNeeded()
        XCTAssertEqual(viewController.tableView.numberOfSections, 10)
        XCTAssertEqual(viewController.tableView.numberOfRows(inSection: 9), 1)
        XCTAssertGreaterThan(viewController.tableView.contentOffset.y, 0)

        let cached = ModuleListViewController.create(env: environment, courseID: "1", moduleID: "10")
        cached.view.layoutIfNeeded()
        XCTAssertGreaterThan(cached.tableView.contentOffset.y, 0)
    }

    func testScrollsToPaginatedModule() {
        let link = "https://canvas.instructure.com/courses/1/modules?page=2"
        let next = HTTPURLResponse(next: link)
        api.mock(GetModulesRequest(courseID: "1", include: [.items, .content_details]), value: [
            .make(id: "1", position: 1),
            .make(id: "2", position: 2),
            .make(id: "3", position: 3),
            .make(id: "4", position: 4),
            .make(id: "5", position: 5),
        ], response: next)
        api.mock(GetNextRequest<[APIModule]>(path: link), value: [
            .make(id: "6", position: 6),
            .make(id: "7", position: 7),
            .make(id: "8", position: 8),
            .make(id: "9", position: 9),
            .make(id: "10", position: 10),
        ])
        let viewController = ModuleListViewController.create(env: environment, courseID: "1", moduleID: "10")
        viewController.view.layoutIfNeeded()
        XCTAssertEqual(viewController.tableView.numberOfSections, 10)
        XCTAssertGreaterThan(viewController.tableView.contentOffset.y, 0)
    }

    func testModuleWithTooManyItems() {
        let module = APIModule.make(id: "1", items: nil)
        api.mock(GetModulesRequest(courseID: "1", include: [.items, .content_details]), value: [module])
        let item = APIModuleItem.make(title: "Item 1 of many")
        api.mock(GetModuleItemsRequest(courseID: "1", moduleID: "1", include: [.content_details]), value: [item])
        viewController.view.layoutIfNeeded()
        XCTAssertEqual(viewController.tableView.numberOfRows(inSection: 0), 1)
        let cell = moduleItemCell(at: IndexPath(row: 0, section: 0))
        XCTAssertEqual(cell.nameLabel.text, "Item 1 of many")
        XCTAssertEqual(viewController.tableView.contentOffset.y, 0)
    }

    func testGetNextPageOfItems() throws {
        let link = "https://canvas.instructure.com/courses/1/modules/1/items?page=2"
        let next = HTTPURLResponse(next: link)
        api.mock(GetModulesRequest(courseID: "1", include: [.items, .content_details]), value: [.make(id: "1", items: nil)])
        api.mock(GetModuleItemsRequest(courseID: "1", moduleID: "1", include: [.content_details]), value: [.make(id: "1")], response: next)
        let task = api.mock(GetNextRequest<[APIModuleItem]>(path: link), value: [.make(id: "2")])
        task.paused = true
        viewController.view.layoutIfNeeded()
        XCTAssertEqual(viewController.tableView.numberOfRows(inSection: 0), 2)
        XCTAssertNotNil(viewController.tableView.cellForRow(at: IndexPath(row: 1, section: 0)))
        task.paused = false
        XCTAssertEqual(viewController.tableView.numberOfRows(inSection: 0), 2)
        XCTAssertNotNil(viewController.tableView.cellForRow(at: IndexPath(row: 1, section: 0)) as? ModuleItemCell)
    }

    func testLoadingFirstPage() {
        let task = api.mock(GetModulesRequest(courseID: "1", include: [.items, .content_details]), value: [])
        task.paused = true
        viewController.view.layoutIfNeeded()
        XCTAssertEqual(viewController.tableView.refreshControl?.isRefreshing, true)
        task.paused = false
        XCTAssertEqual(viewController.tableView.refreshControl?.isRefreshing, false)
    }

    func testLoadingNextPage() {
        api.mock(GetModulesRequest(courseID: "1", include: [.items, .content_details]), value: [])
        let link = "https://canvas.instructure.com/courses/1/modules?page=2"
        let next = HTTPURLResponse(next: link)
        let one = APIModule.make(id: "1", items: [])
        let two = APIModule.make(id: "2", items: [])
        api.mock(GetModulesRequest(courseID: "1", include: [.items, .content_details]), value: [one], response: next)
        let task = api.mock(GetNextRequest<[APIModule]>(path: link), value: [two])
        task.paused = true
        viewController.view.layoutIfNeeded()
        XCTAssertEqual(viewController.tableView.numberOfSections, 1)
        XCTAssertEqual(viewController.tableView.tableFooterView?.isHidden, false)
        XCTAssertEqual(viewController.tableView.contentInset.bottom, 0)
        task.paused = false
        XCTAssertEqual(viewController.tableView.numberOfSections, 2)
        XCTAssertEqual(viewController.tableView.tableFooterView?.isHidden, true)
        XCTAssertEqual(viewController.tableView.contentInset.bottom, -20)
    }

    func testGetNextPageWithTooManyItems() {
        api.mock(GetModulesRequest(courseID: "1", include: [.items, .content_details]), value: [])
        viewController.view.layoutIfNeeded()
        let link = "https://canvas.instructure.com/courses/1/modules?page=2"
        let next = HTTPURLResponse(next: link)
        let one = APIModule.make(id: "1", position: 1, items: [.make()])
        let two = APIModule.make(id: "2", position: 2, items: nil)
        api.mock(GetModulesRequest(courseID: "1", include: [.items, .content_details]), value: [one], response: next)
        api.mock(GetNextRequest<[APIModule]>(path: link), value: [two])
        api.mock(GetModuleItemsRequest(courseID: "1", moduleID: "2", include: [.content_details]), value: [.make()])
        viewController.tableView.refreshControl?.sendActions(for: .valueChanged)
        XCTAssertEqual(viewController.tableView.numberOfSections, 2)
        XCTAssertEqual(viewController.tableView.numberOfRows(inSection: 0), 1)
    }

    func testCollapsingSections() throws {
        api.mock(GetModulesRequest(courseID: "1", include: [.items, .content_details]), value: [.make(id: "3453243")])
        viewController.view.layoutIfNeeded()
        let before = header(forSection: 0)
        XCTAssertFalse(before.collapsableIndicator.isCollapsed)
        before.handleTap(before.tapGestureRecognizer)
        let after = header(forSection: 0)
        XCTAssertTrue(after.collapsableIndicator.isCollapsed)

        let viewController = ModuleListViewController.create(courseID: "1")
        viewController.view.layoutIfNeeded()
        let later = viewController.tableView.headerView(forSection: 0) as! ModuleSectionHeaderView
        XCTAssertTrue(later.collapsableIndicator.isCollapsed)
    }

    func testSubHeaders() throws {
        api.mock(GetModulesRequest(courseID: "1", include: [.items, .content_details]), value: [
            .make(items: [
                .make(
                    title: "I am a sub header",
                    indent: 2,
                    content: .subHeader,
                    published: true
                ),
            ]),
        ])
        viewController.view.layoutIfNeeded()
        let cell = try XCTUnwrap(viewController.tableView.cellForRow(at: IndexPath(row: 0, section: 0)) as? ModuleItemSubHeaderCell)
        XCTAssertEqual(cell.label.text, "I am a sub header")
        XCTAssertEqual(cell.indent, 2)
        XCTAssertEqual(cell.publishedIconView.published, true)
        XCTAssertFalse(cell.isUserInteractionEnabled)
    }

    func testSelectExternalTool() throws {
        api.mock(GetModulesRequest(courseID: "1", include: [.items, .content_details]), value: [
            .make(items: [
                .make(id: "1", content: .externalTool("1", URL(string: "/")!)),
            ]),
        ])
        api.mock(
            GetSessionlessLaunchURLRequest(
                context: ContextModel(.course, id: "1"),
                id: "1",
                url: nil,
                assignmentID: nil,
                moduleItemID: "1",
                launchType: .module_item),
            value: APIGetSessionlessLaunchResponse(url: URL(string: "https://canvas.instructure.com")!)
        )
        viewController.view.layoutIfNeeded()
        viewController.tableView(viewController.tableView, didSelectRowAt: IndexPath(row: 0, section: 0))
        XCTAssertNotNil(router.presented as? SFSafariViewController)
    }

    func testSelectExternalURL() {
        api.mock(GetModulesRequest(courseID: "1", include: [.items, .content_details]), value: [
            .make(items: [
                .make(content: .externalURL(URL(string: "https://canvas.instructure.com")!)),
            ]),
        ])
        viewController.view.layoutIfNeeded()
        viewController.tableView(viewController.tableView, didSelectRowAt: IndexPath(row: 0, section: 0))
        XCTAssertNotNil(router.presented as? SFSafariViewController)
    }

    func testSelectItem() {
        api.mock(GetModulesRequest(courseID: "1", include: [.items, .content_details]), value: [
            .make(items: [
                .make(content: .assignment("1"), url: URL(string: "/courses/1/assignments/1")!),
            ]),
        ])
        viewController.view.layoutIfNeeded()
        viewController.tableView(viewController.tableView, didSelectRowAt: IndexPath(row: 0, section: 0))
        XCTAssertTrue(router.lastRoutedTo(URL(string: "/courses/1/assignments/1")!, withOptions: .detail()))
        XCTAssertNoThrow(viewController.tableView(viewController.tableView, didSelectRowAt: IndexPath(row: 0, section: 99)))
        XCTAssertNoThrow(viewController.tableView(viewController.tableView, didSelectRowAt: IndexPath(row: 99, section: 0)))
    }

    func testViewWillAppearDeselectsSelectedRow() {
        api.mock(GetModulesRequest(courseID: "1", include: [.items, .content_details]), value: [.make(items: [.make(content: .assignment("1"))])])
        viewController.view.layoutIfNeeded()
        viewController.tableView.selectRow(at: IndexPath(row: 0, section: 0), animated: false, scrollPosition: .none)
        XCTAssertNotNil(viewController.tableView.indexPathForSelectedRow)
        viewController.viewWillAppear(false)
        XCTAssertNil(viewController.tableView.indexPathForSelectedRow)
    }
}
