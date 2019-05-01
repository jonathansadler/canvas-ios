//
// Copyright (C) 2019-present Instructure, Inc.
//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, version 3 of the License.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License
// along with this program.  If not, see <http://www.gnu.org/licenses/>.
//

import XCTest

struct User: Encodable {
    let host: String
    let username: String
    let password: String

    static let readOnly = User(host: "narmstrong.instructure.com", username: "s", password: ProcessInfo.processInfo.environment["UI_TEST_PASSWORD"]!)
}

struct Course {
    let id: String

    static let readOnly = Course(id: "1")
}

class CanvasUITests: XCTestCase {
    var user: User? { return nil }
    var app: XCUIApplication!

    private var profile: String? {
        guard let user = user else { return nil }
        return "<dict><key>enableDemo</key><true/><key>host</key><string>\(user.host)</string><key>username</key><string>\(user.username)</string><key>password</key><string>\(user.password)</string></dict>"
    }

    override func setUp() {
        continueAfterFailure = false
        app = XCUIApplication()
        app.launchArguments.append("--ui-test")
        if let profile = profile {
            app.launchArguments.append(contentsOf: [
                "-com.apple.configuration.managed",
                profile
            ])
        }
        app.launch()
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
}

class ReadOnlyTests: CanvasUITests {
    override var user: User { return .readOnly }
}

class CanvasLoginTests: ReadOnlyTests {
    func testLoginSucceedsAndDashboardLoads() {
        let app = XCUIApplication()
        let card = app.buttons["course-card.card-1"]
        let exists = card.waitForExistence(timeout: 10)
        XCTAssert(exists)
    }
}

class GradesTests: ReadOnlyTests {
    func testAssignmentGradeIsCorrect() {
        let card = app.buttons["course-card.card-1"]
        let exists = card.waitForExistence(timeout: 10)
        XCTAssert(exists)
        card.tap()
        let tab = app.buttons["courses-details.grades-cell"]
        _ = tab.waitForExistence(timeout: 10)
        tab.tap()
        let row = app.buttons["grades-list.grades-list-row.cell-3"]
        let rowExists = row.waitForExistence(timeout: 10)
        XCTAssertTrue(rowExists)
        XCTAssertEqual(row.label, "Published MGP Assignment 3 Submitted Excused / 10")
        row.tap()
        let due = app.staticTexts["Due: Jun 15, 2016 at 11:59 PM"]
        let dueExists = due.waitForExistence(timeout: 10)
        XCTAssertTrue(dueExists)
    }
}

class AssignmentsTests: ReadOnlyTests {
    func testViewAssignment() {
        let card = app.buttons["course-card.card-1"]
        let exists = card.waitForExistence(timeout: 10)
        XCTAssert(exists)
        card.tap()
        let tab = app.buttons["courses-details.grades-cell"]
        _ = tab.waitForExistence(timeout: 10)
        tab.tap()
        let row = app.buttons["grades-list.grades-list-row.cell-3"]
        let rowExists = row.waitForExistence(timeout: 10)
        XCTAssertTrue(rowExists)
        row.tap()
        let due = app.staticTexts["Due: Jun 15, 2016 at 11:59 PM"]
        let dueExists = due.waitForExistence(timeout: 10)
        XCTAssertTrue(dueExists)
    }
}

class PagesTests: ReadOnlyTests {
    func testViewPage() {
        let card = app.buttons["course-card.card-1"]
        let exists = card.waitForExistence(timeout: 10)
        XCTAssert(exists)
        card.tap()
        let tab = app.buttons["courses-details.pages-cell"]
        _ = tab.waitForExistence(timeout: 10)
        tab.tap()
        let row = app.buttons["pages.list.page.row-1"]
        let rowExists = row.waitForExistence(timeout: 10)
        XCTAssertTrue(rowExists)
        XCTAssertEqual(row.label, "Published AA Nov 9 at 4:11 PM")
        row.tap()
        let description = app.webViews.staticTexts.element(boundBy: 0).label
        XCTAssertEqual(description, "This is the description")
    }
}

class ModulesTests: ReadOnlyTests {
    func testViewFileModuleItem() {
        let card = app.buttons["course-card.card-1"]
        let exists = card.waitForExistence(timeout: 10)
        XCTAssert(exists)
        card.tap()
        let tab = app.buttons["courses-details.modules-cell"]
        _ = tab.waitForExistence(timeout: 10)
        tab.tap()
        let module = app.cells["module_cell_0_1"]
        let moduleExists = module.waitForExistence(timeout: 10)
        XCTAssertTrue(moduleExists)
        module.tap()
        let moduleItem = app.cells["module_item_cell_0_6"]
        let moduleItemExists = moduleItem.waitForExistence(timeout: 10)
        XCTAssertTrue(moduleItemExists)
        XCTAssertEqual(moduleItem.label, "spanish-1.pdf. Must view. Type: File. Status: Completed")
        moduleItem.tap()
        let next = app.buttons["next_module_item_button"]
        XCTAssertTrue(next.exists)
    }
}
