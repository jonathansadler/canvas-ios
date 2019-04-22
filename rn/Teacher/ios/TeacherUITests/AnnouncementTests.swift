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

class AnnouncementTests: TeacherUITests {
    func testCreateEditDeleteAnnouncement() {
        let app = XCUIApplication()
        let card = app.buttons["course-card.card-40"]
        let exists = card.waitForExistence(timeout: 10)
        XCTAssert(exists)
        card.tap()
        let tab = app.buttons["courses-details.announcements-cell"]
        tab.tap()
        let row = app.buttons["announcements.list.announcement.row-0"]
        XCTAssertEqual(row.label, "Announcement 1 Last post Apr 21 at 8:35 PM")
        let add = app.buttons["announcements.list.addButton"]
        add.tap()
        let done = app.buttons["announcements.edit.doneButton"]
        done.tap()
    }

    func testCreateEditDeleteAnnouncement1() {
        let app = XCUIApplication()
        let card = app.buttons["course-card.card-40"]
        let exists = card.waitForExistence(timeout: 10)
        XCTAssert(exists)
        card.tap()
        let tab = app.buttons["courses-details.announcements-cell"]
        tab.tap()
        let row = app.buttons["announcements.list.announcement.row-0"]
        XCTAssertEqual(row.label, "Announcement 1 Last post Apr 21 at 8:35 PM")
        let add = app.buttons["announcements.list.addButton"]
        add.tap()
        let done = app.buttons["announcements.edit.doneButton"]
        done.tap()
    }

    func testCreateEditDeleteAnnouncement2() {
        let app = XCUIApplication()
        let card = app.buttons["course-card.card-40"]
        let exists = card.waitForExistence(timeout: 10)
        XCTAssert(exists)
        card.tap()
        let tab = app.buttons["courses-details.announcements-cell"]
        tab.tap()
        let row = app.buttons["announcements.list.announcement.row-0"]
        XCTAssertEqual(row.label, "Announcement 1 Last post Apr 21 at 8:35 PM")
        let add = app.buttons["announcements.list.addButton"]
        add.tap()
        let done = app.buttons["announcements.edit.doneButton"]
        done.tap()
    }

    func testCreateEditDeleteAnnouncement3() {
        let app = XCUIApplication()
        let card = app.buttons["course-card.card-40"]
        let exists = card.waitForExistence(timeout: 10)
        XCTAssert(exists)
        card.tap()
        let tab = app.buttons["courses-details.announcements-cell"]
        tab.tap()
        let row = app.buttons["announcements.list.announcement.row-0"]
        XCTAssertEqual(row.label, "Announcement 1 Last post Apr 21 at 8:35 PM")
        let add = app.buttons["announcements.list.addButton"]
        add.tap()
        let done = app.buttons["announcements.edit.doneButton"]
        done.tap()
    }

    func testCreateEditDeleteAnnouncement4() {
        let app = XCUIApplication()
        let card = app.buttons["course-card.card-40"]
        let exists = card.waitForExistence(timeout: 10)
        XCTAssert(exists)
        card.tap()
        let tab = app.buttons["courses-details.announcements-cell"]
        tab.tap()
        let row = app.buttons["announcements.list.announcement.row-0"]
        XCTAssertEqual(row.label, "Announcement 1 Last post Apr 21 at 8:35 PM")
        let add = app.buttons["announcements.list.addButton"]
        add.tap()
        let done = app.buttons["announcements.edit.doneButton"]
        done.tap()
    }

    func testCreateEditDeleteAnnouncement5() {
        let app = XCUIApplication()
        let card = app.buttons["course-card.card-40"]
        let exists = card.waitForExistence(timeout: 10)
        XCTAssert(exists)
        card.tap()
        let tab = app.buttons["courses-details.announcements-cell"]
        tab.tap()
        let row = app.buttons["announcements.list.announcement.row-0"]
        XCTAssertEqual(row.label, "Announcement 1 Last post Apr 21 at 8:35 PM")
        let add = app.buttons["announcements.list.addButton"]
        add.tap()
        let done = app.buttons["announcements.edit.doneButton"]
        done.tap()
    }

    func testCreateEditDeleteAnnouncement6() {
        let app = XCUIApplication()
        let card = app.buttons["course-card.card-40"]
        let exists = card.waitForExistence(timeout: 10)
        XCTAssert(exists)
        card.tap()
        let tab = app.buttons["courses-details.announcements-cell"]
        tab.tap()
        let row = app.buttons["announcements.list.announcement.row-0"]
        XCTAssertEqual(row.label, "Announcement 1 Last post Apr 21 at 8:35 PM")
        let add = app.buttons["announcements.list.addButton"]
        add.tap()
        let done = app.buttons["announcements.edit.doneButton"]
        done.tap()
    }

    func testCreateEditDeleteAnnouncement7() {
        let app = XCUIApplication()
        let card = app.buttons["course-card.card-40"]
        let exists = card.waitForExistence(timeout: 10)
        XCTAssert(exists)
        card.tap()
        let tab = app.buttons["courses-details.announcements-cell"]
        tab.tap()
        let row = app.buttons["announcements.list.announcement.row-0"]
        XCTAssertEqual(row.label, "Announcement 1 Last post Apr 21 at 8:35 PM")
        let add = app.buttons["announcements.list.addButton"]
        add.tap()
        let done = app.buttons["announcements.edit.doneButton"]
        done.tap()
    }

    func testCreateEditDeleteAnnouncement8() {
        let app = XCUIApplication()
        let card = app.buttons["course-card.card-40"]
        let exists = card.waitForExistence(timeout: 10)
        XCTAssert(exists)
        card.tap()
        let tab = app.buttons["courses-details.announcements-cell"]
        tab.tap()
        let row = app.buttons["announcements.list.announcement.row-0"]
        XCTAssertEqual(row.label, "Announcement 1 Last post Apr 21 at 8:35 PM")
        let add = app.buttons["announcements.list.addButton"]
        add.tap()
        let done = app.buttons["announcements.edit.doneButton"]
        done.tap()
    }

    func testCreateEditDeleteAnnouncement9() {
        let app = XCUIApplication()
        let card = app.buttons["course-card.card-40"]
        let exists = card.waitForExistence(timeout: 10)
        XCTAssert(exists)
        card.tap()
        let tab = app.buttons["courses-details.announcements-cell"]
        tab.tap()
        let row = app.buttons["announcements.list.announcement.row-0"]
        XCTAssertEqual(row.label, "Announcement 1 Last post Apr 21 at 8:35 PM")
        let add = app.buttons["announcements.list.addButton"]
        add.tap()
        let done = app.buttons["announcements.edit.doneButton"]
        done.tap()
    }

    func testCreateEditDeleteAnnouncement10() {
        let app = XCUIApplication()
        let card = app.buttons["course-card.card-40"]
        let exists = card.waitForExistence(timeout: 10)
        XCTAssert(exists)
        card.tap()
        let tab = app.buttons["courses-details.announcements-cell"]
        tab.tap()
        let row = app.buttons["announcements.list.announcement.row-0"]
        XCTAssertEqual(row.label, "Announcement 1 Last post Apr 21 at 8:35 PM")
        let add = app.buttons["announcements.list.addButton"]
        add.tap()
        let done = app.buttons["announcements.edit.doneButton"]
        done.tap()
    }

    func testCreateEditDeleteAnnouncement11() {
        let app = XCUIApplication()
        let card = app.buttons["course-card.card-40"]
        let exists = card.waitForExistence(timeout: 10)
        XCTAssert(exists)
        card.tap()
        let tab = app.buttons["courses-details.announcements-cell"]
        tab.tap()
        let row = app.buttons["announcements.list.announcement.row-0"]
        XCTAssertEqual(row.label, "Announcement 1 Last post Apr 21 at 8:35 PM")
        let add = app.buttons["announcements.list.addButton"]
        add.tap()
        let done = app.buttons["announcements.edit.doneButton"]
        done.tap()
    }

    func testCreateEditDeleteAnnouncement12() {
        let app = XCUIApplication()
        let card = app.buttons["course-card.card-40"]
        let exists = card.waitForExistence(timeout: 10)
        XCTAssert(exists)
        card.tap()
        let tab = app.buttons["courses-details.announcements-cell"]
        tab.tap()
        let row = app.buttons["announcements.list.announcement.row-0"]
        XCTAssertEqual(row.label, "Announcement 1 Last post Apr 21 at 8:35 PM")
        let add = app.buttons["announcements.list.addButton"]
        add.tap()
        let done = app.buttons["announcements.edit.doneButton"]
        done.tap()
    }

    func testCreateEditDeleteAnnouncement13() {
        let app = XCUIApplication()
        let card = app.buttons["course-card.card-40"]
        let exists = card.waitForExistence(timeout: 10)
        XCTAssert(exists)
        card.tap()
        let tab = app.buttons["courses-details.announcements-cell"]
        tab.tap()
        let row = app.buttons["announcements.list.announcement.row-0"]
        XCTAssertEqual(row.label, "Announcement 1 Last post Apr 21 at 8:35 PM")
        let add = app.buttons["announcements.list.addButton"]
        add.tap()
        let done = app.buttons["announcements.edit.doneButton"]
        done.tap()
    }

    func testCreateEditDeleteAnnouncement14() {
        let app = XCUIApplication()
        let card = app.buttons["course-card.card-40"]
        let exists = card.waitForExistence(timeout: 10)
        XCTAssert(exists)
        card.tap()
        let tab = app.buttons["courses-details.announcements-cell"]
        tab.tap()
        let row = app.buttons["announcements.list.announcement.row-0"]
        XCTAssertEqual(row.label, "Announcement 1 Last post Apr 21 at 8:35 PM")
        let add = app.buttons["announcements.list.addButton"]
        add.tap()
        let done = app.buttons["announcements.edit.doneButton"]
        done.tap()
    }

    func testCreateEditDeleteAnnouncement15() {
        let app = XCUIApplication()
        let card = app.buttons["course-card.card-40"]
        let exists = card.waitForExistence(timeout: 10)
        XCTAssert(exists)
        card.tap()
        let tab = app.buttons["courses-details.announcements-cell"]
        tab.tap()
        let row = app.buttons["announcements.list.announcement.row-0"]
        XCTAssertEqual(row.label, "Announcement 1 Last post Apr 21 at 8:35 PM")
        let add = app.buttons["announcements.list.addButton"]
        add.tap()
        let done = app.buttons["announcements.edit.doneButton"]
        done.tap()
    }

    func testCreateEditDeleteAnnouncement16() {
        let app = XCUIApplication()
        let card = app.buttons["course-card.card-40"]
        let exists = card.waitForExistence(timeout: 10)
        XCTAssert(exists)
        card.tap()
        let tab = app.buttons["courses-details.announcements-cell"]
        tab.tap()
        let row = app.buttons["announcements.list.announcement.row-0"]
        XCTAssertEqual(row.label, "Announcement 1 Last post Apr 21 at 8:35 PM")
        let add = app.buttons["announcements.list.addButton"]
        add.tap()
        let done = app.buttons["announcements.edit.doneButton"]
        done.tap()
    }
}

class AnnouncementTests2: TeacherUITests {
    func testCreateEditDeleteAnnouncement() {
        let app = XCUIApplication()
        let card = app.buttons["course-card.card-40"]
        let exists = card.waitForExistence(timeout: 10)
        XCTAssert(exists)
        card.tap()
        let tab = app.buttons["courses-details.announcements-cell"]
        tab.tap()
        let row = app.buttons["announcements.list.announcement.row-0"]
        XCTAssertEqual(row.label, "Announcement 1 Last post Apr 21 at 8:35 PM")
        let add = app.buttons["announcements.list.addButton"]
        add.tap()
        let done = app.buttons["announcements.edit.doneButton"]
        done.tap()
    }

    func testCreateEditDeleteAnnouncement1() {
        let app = XCUIApplication()
        let card = app.buttons["course-card.card-40"]
        let exists = card.waitForExistence(timeout: 10)
        XCTAssert(exists)
        card.tap()
        let tab = app.buttons["courses-details.announcements-cell"]
        tab.tap()
        let row = app.buttons["announcements.list.announcement.row-0"]
        XCTAssertEqual(row.label, "Announcement 1 Last post Apr 21 at 8:35 PM")
        let add = app.buttons["announcements.list.addButton"]
        add.tap()
        let done = app.buttons["announcements.edit.doneButton"]
        done.tap()
    }

    func testCreateEditDeleteAnnouncement2() {
        let app = XCUIApplication()
        let card = app.buttons["course-card.card-40"]
        let exists = card.waitForExistence(timeout: 10)
        XCTAssert(exists)
        card.tap()
        let tab = app.buttons["courses-details.announcements-cell"]
        tab.tap()
        let row = app.buttons["announcements.list.announcement.row-0"]
        XCTAssertEqual(row.label, "Announcement 1 Last post Apr 21 at 8:35 PM")
        let add = app.buttons["announcements.list.addButton"]
        add.tap()
        let done = app.buttons["announcements.edit.doneButton"]
        done.tap()
    }

    func testCreateEditDeleteAnnouncement3() {
        let app = XCUIApplication()
        let card = app.buttons["course-card.card-40"]
        let exists = card.waitForExistence(timeout: 10)
        XCTAssert(exists)
        card.tap()
        let tab = app.buttons["courses-details.announcements-cell"]
        tab.tap()
        let row = app.buttons["announcements.list.announcement.row-0"]
        XCTAssertEqual(row.label, "Announcement 1 Last post Apr 21 at 8:35 PM")
        let add = app.buttons["announcements.list.addButton"]
        add.tap()
        let done = app.buttons["announcements.edit.doneButton"]
        done.tap()
    }

    func testCreateEditDeleteAnnouncement4() {
        let app = XCUIApplication()
        let card = app.buttons["course-card.card-40"]
        let exists = card.waitForExistence(timeout: 10)
        XCTAssert(exists)
        card.tap()
        let tab = app.buttons["courses-details.announcements-cell"]
        tab.tap()
        let row = app.buttons["announcements.list.announcement.row-0"]
        XCTAssertEqual(row.label, "Announcement 1 Last post Apr 21 at 8:35 PM")
        let add = app.buttons["announcements.list.addButton"]
        add.tap()
        let done = app.buttons["announcements.edit.doneButton"]
        done.tap()
    }

    func testCreateEditDeleteAnnouncement5() {
        let app = XCUIApplication()
        let card = app.buttons["course-card.card-40"]
        let exists = card.waitForExistence(timeout: 10)
        XCTAssert(exists)
        card.tap()
        let tab = app.buttons["courses-details.announcements-cell"]
        tab.tap()
        let row = app.buttons["announcements.list.announcement.row-0"]
        XCTAssertEqual(row.label, "Announcement 1 Last post Apr 21 at 8:35 PM")
        let add = app.buttons["announcements.list.addButton"]
        add.tap()
        let done = app.buttons["announcements.edit.doneButton"]
        done.tap()
    }

    func testCreateEditDeleteAnnouncement6() {
        let app = XCUIApplication()
        let card = app.buttons["course-card.card-40"]
        let exists = card.waitForExistence(timeout: 10)
        XCTAssert(exists)
        card.tap()
        let tab = app.buttons["courses-details.announcements-cell"]
        tab.tap()
        let row = app.buttons["announcements.list.announcement.row-0"]
        XCTAssertEqual(row.label, "Announcement 1 Last post Apr 21 at 8:35 PM")
        let add = app.buttons["announcements.list.addButton"]
        add.tap()
        let done = app.buttons["announcements.edit.doneButton"]
        done.tap()
    }

    func testCreateEditDeleteAnnouncement7() {
        let app = XCUIApplication()
        let card = app.buttons["course-card.card-40"]
        let exists = card.waitForExistence(timeout: 10)
        XCTAssert(exists)
        card.tap()
        let tab = app.buttons["courses-details.announcements-cell"]
        tab.tap()
        let row = app.buttons["announcements.list.announcement.row-0"]
        XCTAssertEqual(row.label, "Announcement 1 Last post Apr 21 at 8:35 PM")
        let add = app.buttons["announcements.list.addButton"]
        add.tap()
        let done = app.buttons["announcements.edit.doneButton"]
        done.tap()
    }

    func testCreateEditDeleteAnnouncement8() {
        let app = XCUIApplication()
        let card = app.buttons["course-card.card-40"]
        let exists = card.waitForExistence(timeout: 10)
        XCTAssert(exists)
        card.tap()
        let tab = app.buttons["courses-details.announcements-cell"]
        tab.tap()
        let row = app.buttons["announcements.list.announcement.row-0"]
        XCTAssertEqual(row.label, "Announcement 1 Last post Apr 21 at 8:35 PM")
        let add = app.buttons["announcements.list.addButton"]
        add.tap()
        let done = app.buttons["announcements.edit.doneButton"]
        done.tap()
    }

    func testCreateEditDeleteAnnouncement9() {
        let app = XCUIApplication()
        let card = app.buttons["course-card.card-40"]
        let exists = card.waitForExistence(timeout: 10)
        XCTAssert(exists)
        card.tap()
        let tab = app.buttons["courses-details.announcements-cell"]
        tab.tap()
        let row = app.buttons["announcements.list.announcement.row-0"]
        XCTAssertEqual(row.label, "Announcement 1 Last post Apr 21 at 8:35 PM")
        let add = app.buttons["announcements.list.addButton"]
        add.tap()
        let done = app.buttons["announcements.edit.doneButton"]
        done.tap()
    }

    func testCreateEditDeleteAnnouncement10() {
        let app = XCUIApplication()
        let card = app.buttons["course-card.card-40"]
        let exists = card.waitForExistence(timeout: 10)
        XCTAssert(exists)
        card.tap()
        let tab = app.buttons["courses-details.announcements-cell"]
        tab.tap()
        let row = app.buttons["announcements.list.announcement.row-0"]
        XCTAssertEqual(row.label, "Announcement 1 Last post Apr 21 at 8:35 PM")
        let add = app.buttons["announcements.list.addButton"]
        add.tap()
        let done = app.buttons["announcements.edit.doneButton"]
        done.tap()
    }

    func testCreateEditDeleteAnnouncement11() {
        let app = XCUIApplication()
        let card = app.buttons["course-card.card-40"]
        let exists = card.waitForExistence(timeout: 10)
        XCTAssert(exists)
        card.tap()
        let tab = app.buttons["courses-details.announcements-cell"]
        tab.tap()
        let row = app.buttons["announcements.list.announcement.row-0"]
        XCTAssertEqual(row.label, "Announcement 1 Last post Apr 21 at 8:35 PM")
        let add = app.buttons["announcements.list.addButton"]
        add.tap()
        let done = app.buttons["announcements.edit.doneButton"]
        done.tap()
    }

    func testCreateEditDeleteAnnouncement12() {
        let app = XCUIApplication()
        let card = app.buttons["course-card.card-40"]
        let exists = card.waitForExistence(timeout: 10)
        XCTAssert(exists)
        card.tap()
        let tab = app.buttons["courses-details.announcements-cell"]
        tab.tap()
        let row = app.buttons["announcements.list.announcement.row-0"]
        XCTAssertEqual(row.label, "Announcement 1 Last post Apr 21 at 8:35 PM")
        let add = app.buttons["announcements.list.addButton"]
        add.tap()
        let done = app.buttons["announcements.edit.doneButton"]
        done.tap()
    }

    func testCreateEditDeleteAnnouncement13() {
        let app = XCUIApplication()
        let card = app.buttons["course-card.card-40"]
        let exists = card.waitForExistence(timeout: 10)
        XCTAssert(exists)
        card.tap()
        let tab = app.buttons["courses-details.announcements-cell"]
        tab.tap()
        let row = app.buttons["announcements.list.announcement.row-0"]
        XCTAssertEqual(row.label, "Announcement 1 Last post Apr 21 at 8:35 PM")
        let add = app.buttons["announcements.list.addButton"]
        add.tap()
        let done = app.buttons["announcements.edit.doneButton"]
        done.tap()
    }

    func testCreateEditDeleteAnnouncement14() {
        let app = XCUIApplication()
        let card = app.buttons["course-card.card-40"]
        let exists = card.waitForExistence(timeout: 10)
        XCTAssert(exists)
        card.tap()
        let tab = app.buttons["courses-details.announcements-cell"]
        tab.tap()
        let row = app.buttons["announcements.list.announcement.row-0"]
        XCTAssertEqual(row.label, "Announcement 1 Last post Apr 21 at 8:35 PM")
        let add = app.buttons["announcements.list.addButton"]
        add.tap()
        let done = app.buttons["announcements.edit.doneButton"]
        done.tap()
    }

    func testCreateEditDeleteAnnouncement15() {
        let app = XCUIApplication()
        let card = app.buttons["course-card.card-40"]
        let exists = card.waitForExistence(timeout: 10)
        XCTAssert(exists)
        card.tap()
        let tab = app.buttons["courses-details.announcements-cell"]
        tab.tap()
        let row = app.buttons["announcements.list.announcement.row-0"]
        XCTAssertEqual(row.label, "Announcement 1 Last post Apr 21 at 8:35 PM")
        let add = app.buttons["announcements.list.addButton"]
        add.tap()
        let done = app.buttons["announcements.edit.doneButton"]
        done.tap()
    }

    func testCreateEditDeleteAnnouncement16() {
        let app = XCUIApplication()
        let card = app.buttons["course-card.card-40"]
        let exists = card.waitForExistence(timeout: 10)
        XCTAssert(exists)
        card.tap()
        let tab = app.buttons["courses-details.announcements-cell"]
        tab.tap()
        let row = app.buttons["announcements.list.announcement.row-0"]
        XCTAssertEqual(row.label, "Announcement 1 Last post Apr 21 at 8:35 PM")
        let add = app.buttons["announcements.list.addButton"]
        add.tap()
        let done = app.buttons["announcements.edit.doneButton"]
        done.tap()
    }
}

class AnnouncementTests3: TeacherUITests {
    func testCreateEditDeleteAnnouncement() {
        let app = XCUIApplication()
        let card = app.buttons["course-card.card-40"]
        let exists = card.waitForExistence(timeout: 10)
        XCTAssert(exists)
        card.tap()
        let tab = app.buttons["courses-details.announcements-cell"]
        tab.tap()
        let row = app.buttons["announcements.list.announcement.row-0"]
        XCTAssertEqual(row.label, "Announcement 1 Last post Apr 21 at 8:35 PM")
        let add = app.buttons["announcements.list.addButton"]
        add.tap()
        let done = app.buttons["announcements.edit.doneButton"]
        done.tap()
    }

    func testCreateEditDeleteAnnouncement1() {
        let app = XCUIApplication()
        let card = app.buttons["course-card.card-40"]
        let exists = card.waitForExistence(timeout: 10)
        XCTAssert(exists)
        card.tap()
        let tab = app.buttons["courses-details.announcements-cell"]
        tab.tap()
        let row = app.buttons["announcements.list.announcement.row-0"]
        XCTAssertEqual(row.label, "Announcement 1 Last post Apr 21 at 8:35 PM")
        let add = app.buttons["announcements.list.addButton"]
        add.tap()
        let done = app.buttons["announcements.edit.doneButton"]
        done.tap()
    }

    func testCreateEditDeleteAnnouncement2() {
        let app = XCUIApplication()
        let card = app.buttons["course-card.card-40"]
        let exists = card.waitForExistence(timeout: 10)
        XCTAssert(exists)
        card.tap()
        let tab = app.buttons["courses-details.announcements-cell"]
        tab.tap()
        let row = app.buttons["announcements.list.announcement.row-0"]
        XCTAssertEqual(row.label, "Announcement 1 Last post Apr 21 at 8:35 PM")
        let add = app.buttons["announcements.list.addButton"]
        add.tap()
        let done = app.buttons["announcements.edit.doneButton"]
        done.tap()
    }

    func testCreateEditDeleteAnnouncement3() {
        let app = XCUIApplication()
        let card = app.buttons["course-card.card-40"]
        let exists = card.waitForExistence(timeout: 10)
        XCTAssert(exists)
        card.tap()
        let tab = app.buttons["courses-details.announcements-cell"]
        tab.tap()
        let row = app.buttons["announcements.list.announcement.row-0"]
        XCTAssertEqual(row.label, "Announcement 1 Last post Apr 21 at 8:35 PM")
        let add = app.buttons["announcements.list.addButton"]
        add.tap()
        let done = app.buttons["announcements.edit.doneButton"]
        done.tap()
    }

    func testCreateEditDeleteAnnouncement4() {
        let app = XCUIApplication()
        let card = app.buttons["course-card.card-40"]
        let exists = card.waitForExistence(timeout: 10)
        XCTAssert(exists)
        card.tap()
        let tab = app.buttons["courses-details.announcements-cell"]
        tab.tap()
        let row = app.buttons["announcements.list.announcement.row-0"]
        XCTAssertEqual(row.label, "Announcement 1 Last post Apr 21 at 8:35 PM")
        let add = app.buttons["announcements.list.addButton"]
        add.tap()
        let done = app.buttons["announcements.edit.doneButton"]
        done.tap()
    }

    func testCreateEditDeleteAnnouncement5() {
        let app = XCUIApplication()
        let card = app.buttons["course-card.card-40"]
        let exists = card.waitForExistence(timeout: 10)
        XCTAssert(exists)
        card.tap()
        let tab = app.buttons["courses-details.announcements-cell"]
        tab.tap()
        let row = app.buttons["announcements.list.announcement.row-0"]
        XCTAssertEqual(row.label, "Announcement 1 Last post Apr 21 at 8:35 PM")
        let add = app.buttons["announcements.list.addButton"]
        add.tap()
        let done = app.buttons["announcements.edit.doneButton"]
        done.tap()
    }

    func testCreateEditDeleteAnnouncement6() {
        let app = XCUIApplication()
        let card = app.buttons["course-card.card-40"]
        let exists = card.waitForExistence(timeout: 10)
        XCTAssert(exists)
        card.tap()
        let tab = app.buttons["courses-details.announcements-cell"]
        tab.tap()
        let row = app.buttons["announcements.list.announcement.row-0"]
        XCTAssertEqual(row.label, "Announcement 1 Last post Apr 21 at 8:35 PM")
        let add = app.buttons["announcements.list.addButton"]
        add.tap()
        let done = app.buttons["announcements.edit.doneButton"]
        done.tap()
    }

    func testCreateEditDeleteAnnouncement7() {
        let app = XCUIApplication()
        let card = app.buttons["course-card.card-40"]
        let exists = card.waitForExistence(timeout: 10)
        XCTAssert(exists)
        card.tap()
        let tab = app.buttons["courses-details.announcements-cell"]
        tab.tap()
        let row = app.buttons["announcements.list.announcement.row-0"]
        XCTAssertEqual(row.label, "Announcement 1 Last post Apr 21 at 8:35 PM")
        let add = app.buttons["announcements.list.addButton"]
        add.tap()
        let done = app.buttons["announcements.edit.doneButton"]
        done.tap()
    }

    func testCreateEditDeleteAnnouncement8() {
        let app = XCUIApplication()
        let card = app.buttons["course-card.card-40"]
        let exists = card.waitForExistence(timeout: 10)
        XCTAssert(exists)
        card.tap()
        let tab = app.buttons["courses-details.announcements-cell"]
        tab.tap()
        let row = app.buttons["announcements.list.announcement.row-0"]
        XCTAssertEqual(row.label, "Announcement 1 Last post Apr 21 at 8:35 PM")
        let add = app.buttons["announcements.list.addButton"]
        add.tap()
        let done = app.buttons["announcements.edit.doneButton"]
        done.tap()
    }

    func testCreateEditDeleteAnnouncement9() {
        let app = XCUIApplication()
        let card = app.buttons["course-card.card-40"]
        let exists = card.waitForExistence(timeout: 10)
        XCTAssert(exists)
        card.tap()
        let tab = app.buttons["courses-details.announcements-cell"]
        tab.tap()
        let row = app.buttons["announcements.list.announcement.row-0"]
        XCTAssertEqual(row.label, "Announcement 1 Last post Apr 21 at 8:35 PM")
        let add = app.buttons["announcements.list.addButton"]
        add.tap()
        let done = app.buttons["announcements.edit.doneButton"]
        done.tap()
    }

    func testCreateEditDeleteAnnouncement10() {
        let app = XCUIApplication()
        let card = app.buttons["course-card.card-40"]
        let exists = card.waitForExistence(timeout: 10)
        XCTAssert(exists)
        card.tap()
        let tab = app.buttons["courses-details.announcements-cell"]
        tab.tap()
        let row = app.buttons["announcements.list.announcement.row-0"]
        XCTAssertEqual(row.label, "Announcement 1 Last post Apr 21 at 8:35 PM")
        let add = app.buttons["announcements.list.addButton"]
        add.tap()
        let done = app.buttons["announcements.edit.doneButton"]
        done.tap()
    }

    func testCreateEditDeleteAnnouncement11() {
        let app = XCUIApplication()
        let card = app.buttons["course-card.card-40"]
        let exists = card.waitForExistence(timeout: 10)
        XCTAssert(exists)
        card.tap()
        let tab = app.buttons["courses-details.announcements-cell"]
        tab.tap()
        let row = app.buttons["announcements.list.announcement.row-0"]
        XCTAssertEqual(row.label, "Announcement 1 Last post Apr 21 at 8:35 PM")
        let add = app.buttons["announcements.list.addButton"]
        add.tap()
        let done = app.buttons["announcements.edit.doneButton"]
        done.tap()
    }

    func testCreateEditDeleteAnnouncement12() {
        let app = XCUIApplication()
        let card = app.buttons["course-card.card-40"]
        let exists = card.waitForExistence(timeout: 10)
        XCTAssert(exists)
        card.tap()
        let tab = app.buttons["courses-details.announcements-cell"]
        tab.tap()
        let row = app.buttons["announcements.list.announcement.row-0"]
        XCTAssertEqual(row.label, "Announcement 1 Last post Apr 21 at 8:35 PM")
        let add = app.buttons["announcements.list.addButton"]
        add.tap()
        let done = app.buttons["announcements.edit.doneButton"]
        done.tap()
    }

    func testCreateEditDeleteAnnouncement13() {
        let app = XCUIApplication()
        let card = app.buttons["course-card.card-40"]
        let exists = card.waitForExistence(timeout: 10)
        XCTAssert(exists)
        card.tap()
        let tab = app.buttons["courses-details.announcements-cell"]
        tab.tap()
        let row = app.buttons["announcements.list.announcement.row-0"]
        XCTAssertEqual(row.label, "Announcement 1 Last post Apr 21 at 8:35 PM")
        let add = app.buttons["announcements.list.addButton"]
        add.tap()
        let done = app.buttons["announcements.edit.doneButton"]
        done.tap()
    }

    func testCreateEditDeleteAnnouncement14() {
        let app = XCUIApplication()
        let card = app.buttons["course-card.card-40"]
        let exists = card.waitForExistence(timeout: 10)
        XCTAssert(exists)
        card.tap()
        let tab = app.buttons["courses-details.announcements-cell"]
        tab.tap()
        let row = app.buttons["announcements.list.announcement.row-0"]
        XCTAssertEqual(row.label, "Announcement 1 Last post Apr 21 at 8:35 PM")
        let add = app.buttons["announcements.list.addButton"]
        add.tap()
        let done = app.buttons["announcements.edit.doneButton"]
        done.tap()
    }

    func testCreateEditDeleteAnnouncement15() {
        let app = XCUIApplication()
        let card = app.buttons["course-card.card-40"]
        let exists = card.waitForExistence(timeout: 10)
        XCTAssert(exists)
        card.tap()
        let tab = app.buttons["courses-details.announcements-cell"]
        tab.tap()
        let row = app.buttons["announcements.list.announcement.row-0"]
        XCTAssertEqual(row.label, "Announcement 1 Last post Apr 21 at 8:35 PM")
        let add = app.buttons["announcements.list.addButton"]
        add.tap()
        let done = app.buttons["announcements.edit.doneButton"]
        done.tap()
    }

    func testCreateEditDeleteAnnouncement16() {
        let app = XCUIApplication()
        let card = app.buttons["course-card.card-40"]
        let exists = card.waitForExistence(timeout: 10)
        XCTAssert(exists)
        card.tap()
        let tab = app.buttons["courses-details.announcements-cell"]
        tab.tap()
        let row = app.buttons["announcements.list.announcement.row-0"]
        XCTAssertEqual(row.label, "Announcement 1 Last post Apr 21 at 8:35 PM")
        let add = app.buttons["announcements.list.addButton"]
        add.tap()
        let done = app.buttons["announcements.edit.doneButton"]
        done.tap()
    }
}

class AnnouncementTests4: TeacherUITests {
    func testCreateEditDeleteAnnouncement() {
        let app = XCUIApplication()
        let card = app.buttons["course-card.card-40"]
        let exists = card.waitForExistence(timeout: 10)
        XCTAssert(exists)
        card.tap()
        let tab = app.buttons["courses-details.announcements-cell"]
        tab.tap()
        let row = app.buttons["announcements.list.announcement.row-0"]
        XCTAssertEqual(row.label, "Announcement 1 Last post Apr 21 at 8:35 PM")
        let add = app.buttons["announcements.list.addButton"]
        add.tap()
        let done = app.buttons["announcements.edit.doneButton"]
        done.tap()
    }

    func testCreateEditDeleteAnnouncement1() {
        let app = XCUIApplication()
        let card = app.buttons["course-card.card-40"]
        let exists = card.waitForExistence(timeout: 10)
        XCTAssert(exists)
        card.tap()
        let tab = app.buttons["courses-details.announcements-cell"]
        tab.tap()
        let row = app.buttons["announcements.list.announcement.row-0"]
        XCTAssertEqual(row.label, "Announcement 1 Last post Apr 21 at 8:35 PM")
        let add = app.buttons["announcements.list.addButton"]
        add.tap()
        let done = app.buttons["announcements.edit.doneButton"]
        done.tap()
    }

    func testCreateEditDeleteAnnouncement2() {
        let app = XCUIApplication()
        let card = app.buttons["course-card.card-40"]
        let exists = card.waitForExistence(timeout: 10)
        XCTAssert(exists)
        card.tap()
        let tab = app.buttons["courses-details.announcements-cell"]
        tab.tap()
        let row = app.buttons["announcements.list.announcement.row-0"]
        XCTAssertEqual(row.label, "Announcement 1 Last post Apr 21 at 8:35 PM")
        let add = app.buttons["announcements.list.addButton"]
        add.tap()
        let done = app.buttons["announcements.edit.doneButton"]
        done.tap()
    }

    func testCreateEditDeleteAnnouncement3() {
        let app = XCUIApplication()
        let card = app.buttons["course-card.card-40"]
        let exists = card.waitForExistence(timeout: 10)
        XCTAssert(exists)
        card.tap()
        let tab = app.buttons["courses-details.announcements-cell"]
        tab.tap()
        let row = app.buttons["announcements.list.announcement.row-0"]
        XCTAssertEqual(row.label, "Announcement 1 Last post Apr 21 at 8:35 PM")
        let add = app.buttons["announcements.list.addButton"]
        add.tap()
        let done = app.buttons["announcements.edit.doneButton"]
        done.tap()
    }

    func testCreateEditDeleteAnnouncement4() {
        let app = XCUIApplication()
        let card = app.buttons["course-card.card-40"]
        let exists = card.waitForExistence(timeout: 10)
        XCTAssert(exists)
        card.tap()
        let tab = app.buttons["courses-details.announcements-cell"]
        tab.tap()
        let row = app.buttons["announcements.list.announcement.row-0"]
        XCTAssertEqual(row.label, "Announcement 1 Last post Apr 21 at 8:35 PM")
        let add = app.buttons["announcements.list.addButton"]
        add.tap()
        let done = app.buttons["announcements.edit.doneButton"]
        done.tap()
    }

    func testCreateEditDeleteAnnouncement5() {
        let app = XCUIApplication()
        let card = app.buttons["course-card.card-40"]
        let exists = card.waitForExistence(timeout: 10)
        XCTAssert(exists)
        card.tap()
        let tab = app.buttons["courses-details.announcements-cell"]
        tab.tap()
        let row = app.buttons["announcements.list.announcement.row-0"]
        XCTAssertEqual(row.label, "Announcement 1 Last post Apr 21 at 8:35 PM")
        let add = app.buttons["announcements.list.addButton"]
        add.tap()
        let done = app.buttons["announcements.edit.doneButton"]
        done.tap()
    }

    func testCreateEditDeleteAnnouncement6() {
        let app = XCUIApplication()
        let card = app.buttons["course-card.card-40"]
        let exists = card.waitForExistence(timeout: 10)
        XCTAssert(exists)
        card.tap()
        let tab = app.buttons["courses-details.announcements-cell"]
        tab.tap()
        let row = app.buttons["announcements.list.announcement.row-0"]
        XCTAssertEqual(row.label, "Announcement 1 Last post Apr 21 at 8:35 PM")
        let add = app.buttons["announcements.list.addButton"]
        add.tap()
        let done = app.buttons["announcements.edit.doneButton"]
        done.tap()
    }

    func testCreateEditDeleteAnnouncement7() {
        let app = XCUIApplication()
        let card = app.buttons["course-card.card-40"]
        let exists = card.waitForExistence(timeout: 10)
        XCTAssert(exists)
        card.tap()
        let tab = app.buttons["courses-details.announcements-cell"]
        tab.tap()
        let row = app.buttons["announcements.list.announcement.row-0"]
        XCTAssertEqual(row.label, "Announcement 1 Last post Apr 21 at 8:35 PM")
        let add = app.buttons["announcements.list.addButton"]
        add.tap()
        let done = app.buttons["announcements.edit.doneButton"]
        done.tap()
    }

    func testCreateEditDeleteAnnouncement8() {
        let app = XCUIApplication()
        let card = app.buttons["course-card.card-40"]
        let exists = card.waitForExistence(timeout: 10)
        XCTAssert(exists)
        card.tap()
        let tab = app.buttons["courses-details.announcements-cell"]
        tab.tap()
        let row = app.buttons["announcements.list.announcement.row-0"]
        XCTAssertEqual(row.label, "Announcement 1 Last post Apr 21 at 8:35 PM")
        let add = app.buttons["announcements.list.addButton"]
        add.tap()
        let done = app.buttons["announcements.edit.doneButton"]
        done.tap()
    }

    func testCreateEditDeleteAnnouncement9() {
        let app = XCUIApplication()
        let card = app.buttons["course-card.card-40"]
        let exists = card.waitForExistence(timeout: 10)
        XCTAssert(exists)
        card.tap()
        let tab = app.buttons["courses-details.announcements-cell"]
        tab.tap()
        let row = app.buttons["announcements.list.announcement.row-0"]
        XCTAssertEqual(row.label, "Announcement 1 Last post Apr 21 at 8:35 PM")
        let add = app.buttons["announcements.list.addButton"]
        add.tap()
        let done = app.buttons["announcements.edit.doneButton"]
        done.tap()
    }

    func testCreateEditDeleteAnnouncement10() {
        let app = XCUIApplication()
        let card = app.buttons["course-card.card-40"]
        let exists = card.waitForExistence(timeout: 10)
        XCTAssert(exists)
        card.tap()
        let tab = app.buttons["courses-details.announcements-cell"]
        tab.tap()
        let row = app.buttons["announcements.list.announcement.row-0"]
        XCTAssertEqual(row.label, "Announcement 1 Last post Apr 21 at 8:35 PM")
        let add = app.buttons["announcements.list.addButton"]
        add.tap()
        let done = app.buttons["announcements.edit.doneButton"]
        done.tap()
    }

    func testCreateEditDeleteAnnouncement11() {
        let app = XCUIApplication()
        let card = app.buttons["course-card.card-40"]
        let exists = card.waitForExistence(timeout: 10)
        XCTAssert(exists)
        card.tap()
        let tab = app.buttons["courses-details.announcements-cell"]
        tab.tap()
        let row = app.buttons["announcements.list.announcement.row-0"]
        XCTAssertEqual(row.label, "Announcement 1 Last post Apr 21 at 8:35 PM")
        let add = app.buttons["announcements.list.addButton"]
        add.tap()
        let done = app.buttons["announcements.edit.doneButton"]
        done.tap()
    }

    func testCreateEditDeleteAnnouncement12() {
        let app = XCUIApplication()
        let card = app.buttons["course-card.card-40"]
        let exists = card.waitForExistence(timeout: 10)
        XCTAssert(exists)
        card.tap()
        let tab = app.buttons["courses-details.announcements-cell"]
        tab.tap()
        let row = app.buttons["announcements.list.announcement.row-0"]
        XCTAssertEqual(row.label, "Announcement 1 Last post Apr 21 at 8:35 PM")
        let add = app.buttons["announcements.list.addButton"]
        add.tap()
        let done = app.buttons["announcements.edit.doneButton"]
        done.tap()
    }

    func testCreateEditDeleteAnnouncement13() {
        let app = XCUIApplication()
        let card = app.buttons["course-card.card-40"]
        let exists = card.waitForExistence(timeout: 10)
        XCTAssert(exists)
        card.tap()
        let tab = app.buttons["courses-details.announcements-cell"]
        tab.tap()
        let row = app.buttons["announcements.list.announcement.row-0"]
        XCTAssertEqual(row.label, "Announcement 1 Last post Apr 21 at 8:35 PM")
        let add = app.buttons["announcements.list.addButton"]
        add.tap()
        let done = app.buttons["announcements.edit.doneButton"]
        done.tap()
    }

    func testCreateEditDeleteAnnouncement14() {
        let app = XCUIApplication()
        let card = app.buttons["course-card.card-40"]
        let exists = card.waitForExistence(timeout: 10)
        XCTAssert(exists)
        card.tap()
        let tab = app.buttons["courses-details.announcements-cell"]
        tab.tap()
        let row = app.buttons["announcements.list.announcement.row-0"]
        XCTAssertEqual(row.label, "Announcement 1 Last post Apr 21 at 8:35 PM")
        let add = app.buttons["announcements.list.addButton"]
        add.tap()
        let done = app.buttons["announcements.edit.doneButton"]
        done.tap()
    }

    func testCreateEditDeleteAnnouncement15() {
        let app = XCUIApplication()
        let card = app.buttons["course-card.card-40"]
        let exists = card.waitForExistence(timeout: 10)
        XCTAssert(exists)
        card.tap()
        let tab = app.buttons["courses-details.announcements-cell"]
        tab.tap()
        let row = app.buttons["announcements.list.announcement.row-0"]
        XCTAssertEqual(row.label, "Announcement 1 Last post Apr 21 at 8:35 PM")
        let add = app.buttons["announcements.list.addButton"]
        add.tap()
        let done = app.buttons["announcements.edit.doneButton"]
        done.tap()
    }

    func testCreateEditDeleteAnnouncement16() {
        let app = XCUIApplication()
        let card = app.buttons["course-card.card-40"]
        let exists = card.waitForExistence(timeout: 10)
        XCTAssert(exists)
        card.tap()
        let tab = app.buttons["courses-details.announcements-cell"]
        tab.tap()
        let row = app.buttons["announcements.list.announcement.row-0"]
        XCTAssertEqual(row.label, "Announcement 1 Last post Apr 21 at 8:35 PM")
        let add = app.buttons["announcements.list.addButton"]
        add.tap()
        let done = app.buttons["announcements.edit.doneButton"]
        done.tap()
    }
}

class AnnouncementTests5: TeacherUITests {
    func testCreateEditDeleteAnnouncement() {
        let app = XCUIApplication()
        let card = app.buttons["course-card.card-40"]
        let exists = card.waitForExistence(timeout: 10)
        XCTAssert(exists)
        card.tap()
        let tab = app.buttons["courses-details.announcements-cell"]
        tab.tap()
        let row = app.buttons["announcements.list.announcement.row-0"]
        XCTAssertEqual(row.label, "Announcement 1 Last post Apr 21 at 8:35 PM")
        let add = app.buttons["announcements.list.addButton"]
        add.tap()
        let done = app.buttons["announcements.edit.doneButton"]
        done.tap()
    }

    func testCreateEditDeleteAnnouncement1() {
        let app = XCUIApplication()
        let card = app.buttons["course-card.card-40"]
        let exists = card.waitForExistence(timeout: 10)
        XCTAssert(exists)
        card.tap()
        let tab = app.buttons["courses-details.announcements-cell"]
        tab.tap()
        let row = app.buttons["announcements.list.announcement.row-0"]
        XCTAssertEqual(row.label, "Announcement 1 Last post Apr 21 at 8:35 PM")
        let add = app.buttons["announcements.list.addButton"]
        add.tap()
        let done = app.buttons["announcements.edit.doneButton"]
        done.tap()
    }

    func testCreateEditDeleteAnnouncement2() {
        let app = XCUIApplication()
        let card = app.buttons["course-card.card-40"]
        let exists = card.waitForExistence(timeout: 10)
        XCTAssert(exists)
        card.tap()
        let tab = app.buttons["courses-details.announcements-cell"]
        tab.tap()
        let row = app.buttons["announcements.list.announcement.row-0"]
        XCTAssertEqual(row.label, "Announcement 1 Last post Apr 21 at 8:35 PM")
        let add = app.buttons["announcements.list.addButton"]
        add.tap()
        let done = app.buttons["announcements.edit.doneButton"]
        done.tap()
    }

    func testCreateEditDeleteAnnouncement3() {
        let app = XCUIApplication()
        let card = app.buttons["course-card.card-40"]
        let exists = card.waitForExistence(timeout: 10)
        XCTAssert(exists)
        card.tap()
        let tab = app.buttons["courses-details.announcements-cell"]
        tab.tap()
        let row = app.buttons["announcements.list.announcement.row-0"]
        XCTAssertEqual(row.label, "Announcement 1 Last post Apr 21 at 8:35 PM")
        let add = app.buttons["announcements.list.addButton"]
        add.tap()
        let done = app.buttons["announcements.edit.doneButton"]
        done.tap()
    }

    func testCreateEditDeleteAnnouncement4() {
        let app = XCUIApplication()
        let card = app.buttons["course-card.card-40"]
        let exists = card.waitForExistence(timeout: 10)
        XCTAssert(exists)
        card.tap()
        let tab = app.buttons["courses-details.announcements-cell"]
        tab.tap()
        let row = app.buttons["announcements.list.announcement.row-0"]
        XCTAssertEqual(row.label, "Announcement 1 Last post Apr 21 at 8:35 PM")
        let add = app.buttons["announcements.list.addButton"]
        add.tap()
        let done = app.buttons["announcements.edit.doneButton"]
        done.tap()
    }

    func testCreateEditDeleteAnnouncement5() {
        let app = XCUIApplication()
        let card = app.buttons["course-card.card-40"]
        let exists = card.waitForExistence(timeout: 10)
        XCTAssert(exists)
        card.tap()
        let tab = app.buttons["courses-details.announcements-cell"]
        tab.tap()
        let row = app.buttons["announcements.list.announcement.row-0"]
        XCTAssertEqual(row.label, "Announcement 1 Last post Apr 21 at 8:35 PM")
        let add = app.buttons["announcements.list.addButton"]
        add.tap()
        let done = app.buttons["announcements.edit.doneButton"]
        done.tap()
    }

    func testCreateEditDeleteAnnouncement6() {
        let app = XCUIApplication()
        let card = app.buttons["course-card.card-40"]
        let exists = card.waitForExistence(timeout: 10)
        XCTAssert(exists)
        card.tap()
        let tab = app.buttons["courses-details.announcements-cell"]
        tab.tap()
        let row = app.buttons["announcements.list.announcement.row-0"]
        XCTAssertEqual(row.label, "Announcement 1 Last post Apr 21 at 8:35 PM")
        let add = app.buttons["announcements.list.addButton"]
        add.tap()
        let done = app.buttons["announcements.edit.doneButton"]
        done.tap()
    }

    func testCreateEditDeleteAnnouncement7() {
        let app = XCUIApplication()
        let card = app.buttons["course-card.card-40"]
        let exists = card.waitForExistence(timeout: 10)
        XCTAssert(exists)
        card.tap()
        let tab = app.buttons["courses-details.announcements-cell"]
        tab.tap()
        let row = app.buttons["announcements.list.announcement.row-0"]
        XCTAssertEqual(row.label, "Announcement 1 Last post Apr 21 at 8:35 PM")
        let add = app.buttons["announcements.list.addButton"]
        add.tap()
        let done = app.buttons["announcements.edit.doneButton"]
        done.tap()
    }

    func testCreateEditDeleteAnnouncement8() {
        let app = XCUIApplication()
        let card = app.buttons["course-card.card-40"]
        let exists = card.waitForExistence(timeout: 10)
        XCTAssert(exists)
        card.tap()
        let tab = app.buttons["courses-details.announcements-cell"]
        tab.tap()
        let row = app.buttons["announcements.list.announcement.row-0"]
        XCTAssertEqual(row.label, "Announcement 1 Last post Apr 21 at 8:35 PM")
        let add = app.buttons["announcements.list.addButton"]
        add.tap()
        let done = app.buttons["announcements.edit.doneButton"]
        done.tap()
    }

    func testCreateEditDeleteAnnouncement9() {
        let app = XCUIApplication()
        let card = app.buttons["course-card.card-40"]
        let exists = card.waitForExistence(timeout: 10)
        XCTAssert(exists)
        card.tap()
        let tab = app.buttons["courses-details.announcements-cell"]
        tab.tap()
        let row = app.buttons["announcements.list.announcement.row-0"]
        XCTAssertEqual(row.label, "Announcement 1 Last post Apr 21 at 8:35 PM")
        let add = app.buttons["announcements.list.addButton"]
        add.tap()
        let done = app.buttons["announcements.edit.doneButton"]
        done.tap()
    }

    func testCreateEditDeleteAnnouncement10() {
        let app = XCUIApplication()
        let card = app.buttons["course-card.card-40"]
        let exists = card.waitForExistence(timeout: 10)
        XCTAssert(exists)
        card.tap()
        let tab = app.buttons["courses-details.announcements-cell"]
        tab.tap()
        let row = app.buttons["announcements.list.announcement.row-0"]
        XCTAssertEqual(row.label, "Announcement 1 Last post Apr 21 at 8:35 PM")
        let add = app.buttons["announcements.list.addButton"]
        add.tap()
        let done = app.buttons["announcements.edit.doneButton"]
        done.tap()
    }

    func testCreateEditDeleteAnnouncement11() {
        let app = XCUIApplication()
        let card = app.buttons["course-card.card-40"]
        let exists = card.waitForExistence(timeout: 10)
        XCTAssert(exists)
        card.tap()
        let tab = app.buttons["courses-details.announcements-cell"]
        tab.tap()
        let row = app.buttons["announcements.list.announcement.row-0"]
        XCTAssertEqual(row.label, "Announcement 1 Last post Apr 21 at 8:35 PM")
        let add = app.buttons["announcements.list.addButton"]
        add.tap()
        let done = app.buttons["announcements.edit.doneButton"]
        done.tap()
    }

    func testCreateEditDeleteAnnouncement12() {
        let app = XCUIApplication()
        let card = app.buttons["course-card.card-40"]
        let exists = card.waitForExistence(timeout: 10)
        XCTAssert(exists)
        card.tap()
        let tab = app.buttons["courses-details.announcements-cell"]
        tab.tap()
        let row = app.buttons["announcements.list.announcement.row-0"]
        XCTAssertEqual(row.label, "Announcement 1 Last post Apr 21 at 8:35 PM")
        let add = app.buttons["announcements.list.addButton"]
        add.tap()
        let done = app.buttons["announcements.edit.doneButton"]
        done.tap()
    }

    func testCreateEditDeleteAnnouncement13() {
        let app = XCUIApplication()
        let card = app.buttons["course-card.card-40"]
        let exists = card.waitForExistence(timeout: 10)
        XCTAssert(exists)
        card.tap()
        let tab = app.buttons["courses-details.announcements-cell"]
        tab.tap()
        let row = app.buttons["announcements.list.announcement.row-0"]
        XCTAssertEqual(row.label, "Announcement 1 Last post Apr 21 at 8:35 PM")
        let add = app.buttons["announcements.list.addButton"]
        add.tap()
        let done = app.buttons["announcements.edit.doneButton"]
        done.tap()
    }

    func testCreateEditDeleteAnnouncement14() {
        let app = XCUIApplication()
        let card = app.buttons["course-card.card-40"]
        let exists = card.waitForExistence(timeout: 10)
        XCTAssert(exists)
        card.tap()
        let tab = app.buttons["courses-details.announcements-cell"]
        tab.tap()
        let row = app.buttons["announcements.list.announcement.row-0"]
        XCTAssertEqual(row.label, "Announcement 1 Last post Apr 21 at 8:35 PM")
        let add = app.buttons["announcements.list.addButton"]
        add.tap()
        let done = app.buttons["announcements.edit.doneButton"]
        done.tap()
    }

    func testCreateEditDeleteAnnouncement15() {
        let app = XCUIApplication()
        let card = app.buttons["course-card.card-40"]
        let exists = card.waitForExistence(timeout: 10)
        XCTAssert(exists)
        card.tap()
        let tab = app.buttons["courses-details.announcements-cell"]
        tab.tap()
        let row = app.buttons["announcements.list.announcement.row-0"]
        XCTAssertEqual(row.label, "Announcement 1 Last post Apr 21 at 8:35 PM")
        let add = app.buttons["announcements.list.addButton"]
        add.tap()
        let done = app.buttons["announcements.edit.doneButton"]
        done.tap()
    }

    func testCreateEditDeleteAnnouncement16() {
        let app = XCUIApplication()
        let card = app.buttons["course-card.card-40"]
        let exists = card.waitForExistence(timeout: 10)
        XCTAssert(exists)
        card.tap()
        let tab = app.buttons["courses-details.announcements-cell"]
        tab.tap()
        let row = app.buttons["announcements.list.announcement.row-0"]
        XCTAssertEqual(row.label, "Announcement 1 Last post Apr 21 at 8:35 PM")
        let add = app.buttons["announcements.list.addButton"]
        add.tap()
        let done = app.buttons["announcements.edit.doneButton"]
        done.tap()
    }
}

class AnnouncementTests6: TeacherUITests {
    func testCreateEditDeleteAnnouncement() {
        let app = XCUIApplication()
        let card = app.buttons["course-card.card-40"]
        let exists = card.waitForExistence(timeout: 10)
        XCTAssert(exists)
        card.tap()
        let tab = app.buttons["courses-details.announcements-cell"]
        tab.tap()
        let row = app.buttons["announcements.list.announcement.row-0"]
        XCTAssertEqual(row.label, "Announcement 1 Last post Apr 21 at 8:35 PM")
        let add = app.buttons["announcements.list.addButton"]
        add.tap()
        let done = app.buttons["announcements.edit.doneButton"]
        done.tap()
    }

    func testCreateEditDeleteAnnouncement1() {
        let app = XCUIApplication()
        let card = app.buttons["course-card.card-40"]
        let exists = card.waitForExistence(timeout: 10)
        XCTAssert(exists)
        card.tap()
        let tab = app.buttons["courses-details.announcements-cell"]
        tab.tap()
        let row = app.buttons["announcements.list.announcement.row-0"]
        XCTAssertEqual(row.label, "Announcement 1 Last post Apr 21 at 8:35 PM")
        let add = app.buttons["announcements.list.addButton"]
        add.tap()
        let done = app.buttons["announcements.edit.doneButton"]
        done.tap()
    }

    func testCreateEditDeleteAnnouncement2() {
        let app = XCUIApplication()
        let card = app.buttons["course-card.card-40"]
        let exists = card.waitForExistence(timeout: 10)
        XCTAssert(exists)
        card.tap()
        let tab = app.buttons["courses-details.announcements-cell"]
        tab.tap()
        let row = app.buttons["announcements.list.announcement.row-0"]
        XCTAssertEqual(row.label, "Announcement 1 Last post Apr 21 at 8:35 PM")
        let add = app.buttons["announcements.list.addButton"]
        add.tap()
        let done = app.buttons["announcements.edit.doneButton"]
        done.tap()
    }

    func testCreateEditDeleteAnnouncement3() {
        let app = XCUIApplication()
        let card = app.buttons["course-card.card-40"]
        let exists = card.waitForExistence(timeout: 10)
        XCTAssert(exists)
        card.tap()
        let tab = app.buttons["courses-details.announcements-cell"]
        tab.tap()
        let row = app.buttons["announcements.list.announcement.row-0"]
        XCTAssertEqual(row.label, "Announcement 1 Last post Apr 21 at 8:35 PM")
        let add = app.buttons["announcements.list.addButton"]
        add.tap()
        let done = app.buttons["announcements.edit.doneButton"]
        done.tap()
    }

    func testCreateEditDeleteAnnouncement4() {
        let app = XCUIApplication()
        let card = app.buttons["course-card.card-40"]
        let exists = card.waitForExistence(timeout: 10)
        XCTAssert(exists)
        card.tap()
        let tab = app.buttons["courses-details.announcements-cell"]
        tab.tap()
        let row = app.buttons["announcements.list.announcement.row-0"]
        XCTAssertEqual(row.label, "Announcement 1 Last post Apr 21 at 8:35 PM")
        let add = app.buttons["announcements.list.addButton"]
        add.tap()
        let done = app.buttons["announcements.edit.doneButton"]
        done.tap()
    }

    func testCreateEditDeleteAnnouncement5() {
        let app = XCUIApplication()
        let card = app.buttons["course-card.card-40"]
        let exists = card.waitForExistence(timeout: 10)
        XCTAssert(exists)
        card.tap()
        let tab = app.buttons["courses-details.announcements-cell"]
        tab.tap()
        let row = app.buttons["announcements.list.announcement.row-0"]
        XCTAssertEqual(row.label, "Announcement 1 Last post Apr 21 at 8:35 PM")
        let add = app.buttons["announcements.list.addButton"]
        add.tap()
        let done = app.buttons["announcements.edit.doneButton"]
        done.tap()
    }

    func testCreateEditDeleteAnnouncement6() {
        let app = XCUIApplication()
        let card = app.buttons["course-card.card-40"]
        let exists = card.waitForExistence(timeout: 10)
        XCTAssert(exists)
        card.tap()
        let tab = app.buttons["courses-details.announcements-cell"]
        tab.tap()
        let row = app.buttons["announcements.list.announcement.row-0"]
        XCTAssertEqual(row.label, "Announcement 1 Last post Apr 21 at 8:35 PM")
        let add = app.buttons["announcements.list.addButton"]
        add.tap()
        let done = app.buttons["announcements.edit.doneButton"]
        done.tap()
    }

    func testCreateEditDeleteAnnouncement7() {
        let app = XCUIApplication()
        let card = app.buttons["course-card.card-40"]
        let exists = card.waitForExistence(timeout: 10)
        XCTAssert(exists)
        card.tap()
        let tab = app.buttons["courses-details.announcements-cell"]
        tab.tap()
        let row = app.buttons["announcements.list.announcement.row-0"]
        XCTAssertEqual(row.label, "Announcement 1 Last post Apr 21 at 8:35 PM")
        let add = app.buttons["announcements.list.addButton"]
        add.tap()
        let done = app.buttons["announcements.edit.doneButton"]
        done.tap()
    }

    func testCreateEditDeleteAnnouncement8() {
        let app = XCUIApplication()
        let card = app.buttons["course-card.card-40"]
        let exists = card.waitForExistence(timeout: 10)
        XCTAssert(exists)
        card.tap()
        let tab = app.buttons["courses-details.announcements-cell"]
        tab.tap()
        let row = app.buttons["announcements.list.announcement.row-0"]
        XCTAssertEqual(row.label, "Announcement 1 Last post Apr 21 at 8:35 PM")
        let add = app.buttons["announcements.list.addButton"]
        add.tap()
        let done = app.buttons["announcements.edit.doneButton"]
        done.tap()
    }

    func testCreateEditDeleteAnnouncement9() {
        let app = XCUIApplication()
        let card = app.buttons["course-card.card-40"]
        let exists = card.waitForExistence(timeout: 10)
        XCTAssert(exists)
        card.tap()
        let tab = app.buttons["courses-details.announcements-cell"]
        tab.tap()
        let row = app.buttons["announcements.list.announcement.row-0"]
        XCTAssertEqual(row.label, "Announcement 1 Last post Apr 21 at 8:35 PM")
        let add = app.buttons["announcements.list.addButton"]
        add.tap()
        let done = app.buttons["announcements.edit.doneButton"]
        done.tap()
    }

    func testCreateEditDeleteAnnouncement10() {
        let app = XCUIApplication()
        let card = app.buttons["course-card.card-40"]
        let exists = card.waitForExistence(timeout: 10)
        XCTAssert(exists)
        card.tap()
        let tab = app.buttons["courses-details.announcements-cell"]
        tab.tap()
        let row = app.buttons["announcements.list.announcement.row-0"]
        XCTAssertEqual(row.label, "Announcement 1 Last post Apr 21 at 8:35 PM")
        let add = app.buttons["announcements.list.addButton"]
        add.tap()
        let done = app.buttons["announcements.edit.doneButton"]
        done.tap()
    }

    func testCreateEditDeleteAnnouncement11() {
        let app = XCUIApplication()
        let card = app.buttons["course-card.card-40"]
        let exists = card.waitForExistence(timeout: 10)
        XCTAssert(exists)
        card.tap()
        let tab = app.buttons["courses-details.announcements-cell"]
        tab.tap()
        let row = app.buttons["announcements.list.announcement.row-0"]
        XCTAssertEqual(row.label, "Announcement 1 Last post Apr 21 at 8:35 PM")
        let add = app.buttons["announcements.list.addButton"]
        add.tap()
        let done = app.buttons["announcements.edit.doneButton"]
        done.tap()
    }

    func testCreateEditDeleteAnnouncement12() {
        let app = XCUIApplication()
        let card = app.buttons["course-card.card-40"]
        let exists = card.waitForExistence(timeout: 10)
        XCTAssert(exists)
        card.tap()
        let tab = app.buttons["courses-details.announcements-cell"]
        tab.tap()
        let row = app.buttons["announcements.list.announcement.row-0"]
        XCTAssertEqual(row.label, "Announcement 1 Last post Apr 21 at 8:35 PM")
        let add = app.buttons["announcements.list.addButton"]
        add.tap()
        let done = app.buttons["announcements.edit.doneButton"]
        done.tap()
    }

    func testCreateEditDeleteAnnouncement13() {
        let app = XCUIApplication()
        let card = app.buttons["course-card.card-40"]
        let exists = card.waitForExistence(timeout: 10)
        XCTAssert(exists)
        card.tap()
        let tab = app.buttons["courses-details.announcements-cell"]
        tab.tap()
        let row = app.buttons["announcements.list.announcement.row-0"]
        XCTAssertEqual(row.label, "Announcement 1 Last post Apr 21 at 8:35 PM")
        let add = app.buttons["announcements.list.addButton"]
        add.tap()
        let done = app.buttons["announcements.edit.doneButton"]
        done.tap()
    }

    func testCreateEditDeleteAnnouncement14() {
        let app = XCUIApplication()
        let card = app.buttons["course-card.card-40"]
        let exists = card.waitForExistence(timeout: 10)
        XCTAssert(exists)
        card.tap()
        let tab = app.buttons["courses-details.announcements-cell"]
        tab.tap()
        let row = app.buttons["announcements.list.announcement.row-0"]
        XCTAssertEqual(row.label, "Announcement 1 Last post Apr 21 at 8:35 PM")
        let add = app.buttons["announcements.list.addButton"]
        add.tap()
        let done = app.buttons["announcements.edit.doneButton"]
        done.tap()
    }

    func testCreateEditDeleteAnnouncement15() {
        let app = XCUIApplication()
        let card = app.buttons["course-card.card-40"]
        let exists = card.waitForExistence(timeout: 10)
        XCTAssert(exists)
        card.tap()
        let tab = app.buttons["courses-details.announcements-cell"]
        tab.tap()
        let row = app.buttons["announcements.list.announcement.row-0"]
        XCTAssertEqual(row.label, "Announcement 1 Last post Apr 21 at 8:35 PM")
        let add = app.buttons["announcements.list.addButton"]
        add.tap()
        let done = app.buttons["announcements.edit.doneButton"]
        done.tap()
    }

    func testCreateEditDeleteAnnouncement16() {
        let app = XCUIApplication()
        let card = app.buttons["course-card.card-40"]
        let exists = card.waitForExistence(timeout: 10)
        XCTAssert(exists)
        card.tap()
        let tab = app.buttons["courses-details.announcements-cell"]
        tab.tap()
        let row = app.buttons["announcements.list.announcement.row-0"]
        XCTAssertEqual(row.label, "Announcement 1 Last post Apr 21 at 8:35 PM")
        let add = app.buttons["announcements.list.addButton"]
        add.tap()
        let done = app.buttons["announcements.edit.doneButton"]
        done.tap()
    }
}

class AnnouncementTests7: TeacherUITests {
    func testCreateEditDeleteAnnouncement() {
        let app = XCUIApplication()
        let card = app.buttons["course-card.card-40"]
        let exists = card.waitForExistence(timeout: 10)
        XCTAssert(exists)
        card.tap()
        let tab = app.buttons["courses-details.announcements-cell"]
        tab.tap()
        let row = app.buttons["announcements.list.announcement.row-0"]
        XCTAssertEqual(row.label, "Announcement 1 Last post Apr 21 at 8:35 PM")
        let add = app.buttons["announcements.list.addButton"]
        add.tap()
        let done = app.buttons["announcements.edit.doneButton"]
        done.tap()
    }

    func testCreateEditDeleteAnnouncement1() {
        let app = XCUIApplication()
        let card = app.buttons["course-card.card-40"]
        let exists = card.waitForExistence(timeout: 10)
        XCTAssert(exists)
        card.tap()
        let tab = app.buttons["courses-details.announcements-cell"]
        tab.tap()
        let row = app.buttons["announcements.list.announcement.row-0"]
        XCTAssertEqual(row.label, "Announcement 1 Last post Apr 21 at 8:35 PM")
        let add = app.buttons["announcements.list.addButton"]
        add.tap()
        let done = app.buttons["announcements.edit.doneButton"]
        done.tap()
    }

    func testCreateEditDeleteAnnouncement2() {
        let app = XCUIApplication()
        let card = app.buttons["course-card.card-40"]
        let exists = card.waitForExistence(timeout: 10)
        XCTAssert(exists)
        card.tap()
        let tab = app.buttons["courses-details.announcements-cell"]
        tab.tap()
        let row = app.buttons["announcements.list.announcement.row-0"]
        XCTAssertEqual(row.label, "Announcement 1 Last post Apr 21 at 8:35 PM")
        let add = app.buttons["announcements.list.addButton"]
        add.tap()
        let done = app.buttons["announcements.edit.doneButton"]
        done.tap()
    }

    func testCreateEditDeleteAnnouncement3() {
        let app = XCUIApplication()
        let card = app.buttons["course-card.card-40"]
        let exists = card.waitForExistence(timeout: 10)
        XCTAssert(exists)
        card.tap()
        let tab = app.buttons["courses-details.announcements-cell"]
        tab.tap()
        let row = app.buttons["announcements.list.announcement.row-0"]
        XCTAssertEqual(row.label, "Announcement 1 Last post Apr 21 at 8:35 PM")
        let add = app.buttons["announcements.list.addButton"]
        add.tap()
        let done = app.buttons["announcements.edit.doneButton"]
        done.tap()
    }

    func testCreateEditDeleteAnnouncement4() {
        let app = XCUIApplication()
        let card = app.buttons["course-card.card-40"]
        let exists = card.waitForExistence(timeout: 10)
        XCTAssert(exists)
        card.tap()
        let tab = app.buttons["courses-details.announcements-cell"]
        tab.tap()
        let row = app.buttons["announcements.list.announcement.row-0"]
        XCTAssertEqual(row.label, "Announcement 1 Last post Apr 21 at 8:35 PM")
        let add = app.buttons["announcements.list.addButton"]
        add.tap()
        let done = app.buttons["announcements.edit.doneButton"]
        done.tap()
    }

    func testCreateEditDeleteAnnouncement5() {
        let app = XCUIApplication()
        let card = app.buttons["course-card.card-40"]
        let exists = card.waitForExistence(timeout: 10)
        XCTAssert(exists)
        card.tap()
        let tab = app.buttons["courses-details.announcements-cell"]
        tab.tap()
        let row = app.buttons["announcements.list.announcement.row-0"]
        XCTAssertEqual(row.label, "Announcement 1 Last post Apr 21 at 8:35 PM")
        let add = app.buttons["announcements.list.addButton"]
        add.tap()
        let done = app.buttons["announcements.edit.doneButton"]
        done.tap()
    }

    func testCreateEditDeleteAnnouncement6() {
        let app = XCUIApplication()
        let card = app.buttons["course-card.card-40"]
        let exists = card.waitForExistence(timeout: 10)
        XCTAssert(exists)
        card.tap()
        let tab = app.buttons["courses-details.announcements-cell"]
        tab.tap()
        let row = app.buttons["announcements.list.announcement.row-0"]
        XCTAssertEqual(row.label, "Announcement 1 Last post Apr 21 at 8:35 PM")
        let add = app.buttons["announcements.list.addButton"]
        add.tap()
        let done = app.buttons["announcements.edit.doneButton"]
        done.tap()
    }

    func testCreateEditDeleteAnnouncement7() {
        let app = XCUIApplication()
        let card = app.buttons["course-card.card-40"]
        let exists = card.waitForExistence(timeout: 10)
        XCTAssert(exists)
        card.tap()
        let tab = app.buttons["courses-details.announcements-cell"]
        tab.tap()
        let row = app.buttons["announcements.list.announcement.row-0"]
        XCTAssertEqual(row.label, "Announcement 1 Last post Apr 21 at 8:35 PM")
        let add = app.buttons["announcements.list.addButton"]
        add.tap()
        let done = app.buttons["announcements.edit.doneButton"]
        done.tap()
    }

    func testCreateEditDeleteAnnouncement8() {
        let app = XCUIApplication()
        let card = app.buttons["course-card.card-40"]
        let exists = card.waitForExistence(timeout: 10)
        XCTAssert(exists)
        card.tap()
        let tab = app.buttons["courses-details.announcements-cell"]
        tab.tap()
        let row = app.buttons["announcements.list.announcement.row-0"]
        XCTAssertEqual(row.label, "Announcement 1 Last post Apr 21 at 8:35 PM")
        let add = app.buttons["announcements.list.addButton"]
        add.tap()
        let done = app.buttons["announcements.edit.doneButton"]
        done.tap()
    }

    func testCreateEditDeleteAnnouncement9() {
        let app = XCUIApplication()
        let card = app.buttons["course-card.card-40"]
        let exists = card.waitForExistence(timeout: 10)
        XCTAssert(exists)
        card.tap()
        let tab = app.buttons["courses-details.announcements-cell"]
        tab.tap()
        let row = app.buttons["announcements.list.announcement.row-0"]
        XCTAssertEqual(row.label, "Announcement 1 Last post Apr 21 at 8:35 PM")
        let add = app.buttons["announcements.list.addButton"]
        add.tap()
        let done = app.buttons["announcements.edit.doneButton"]
        done.tap()
    }

    func testCreateEditDeleteAnnouncement10() {
        let app = XCUIApplication()
        let card = app.buttons["course-card.card-40"]
        let exists = card.waitForExistence(timeout: 10)
        XCTAssert(exists)
        card.tap()
        let tab = app.buttons["courses-details.announcements-cell"]
        tab.tap()
        let row = app.buttons["announcements.list.announcement.row-0"]
        XCTAssertEqual(row.label, "Announcement 1 Last post Apr 21 at 8:35 PM")
        let add = app.buttons["announcements.list.addButton"]
        add.tap()
        let done = app.buttons["announcements.edit.doneButton"]
        done.tap()
    }

    func testCreateEditDeleteAnnouncement11() {
        let app = XCUIApplication()
        let card = app.buttons["course-card.card-40"]
        let exists = card.waitForExistence(timeout: 10)
        XCTAssert(exists)
        card.tap()
        let tab = app.buttons["courses-details.announcements-cell"]
        tab.tap()
        let row = app.buttons["announcements.list.announcement.row-0"]
        XCTAssertEqual(row.label, "Announcement 1 Last post Apr 21 at 8:35 PM")
        let add = app.buttons["announcements.list.addButton"]
        add.tap()
        let done = app.buttons["announcements.edit.doneButton"]
        done.tap()
    }

    func testCreateEditDeleteAnnouncement12() {
        let app = XCUIApplication()
        let card = app.buttons["course-card.card-40"]
        let exists = card.waitForExistence(timeout: 10)
        XCTAssert(exists)
        card.tap()
        let tab = app.buttons["courses-details.announcements-cell"]
        tab.tap()
        let row = app.buttons["announcements.list.announcement.row-0"]
        XCTAssertEqual(row.label, "Announcement 1 Last post Apr 21 at 8:35 PM")
        let add = app.buttons["announcements.list.addButton"]
        add.tap()
        let done = app.buttons["announcements.edit.doneButton"]
        done.tap()
    }

    func testCreateEditDeleteAnnouncement13() {
        let app = XCUIApplication()
        let card = app.buttons["course-card.card-40"]
        let exists = card.waitForExistence(timeout: 10)
        XCTAssert(exists)
        card.tap()
        let tab = app.buttons["courses-details.announcements-cell"]
        tab.tap()
        let row = app.buttons["announcements.list.announcement.row-0"]
        XCTAssertEqual(row.label, "Announcement 1 Last post Apr 21 at 8:35 PM")
        let add = app.buttons["announcements.list.addButton"]
        add.tap()
        let done = app.buttons["announcements.edit.doneButton"]
        done.tap()
    }

    func testCreateEditDeleteAnnouncement14() {
        let app = XCUIApplication()
        let card = app.buttons["course-card.card-40"]
        let exists = card.waitForExistence(timeout: 10)
        XCTAssert(exists)
        card.tap()
        let tab = app.buttons["courses-details.announcements-cell"]
        tab.tap()
        let row = app.buttons["announcements.list.announcement.row-0"]
        XCTAssertEqual(row.label, "Announcement 1 Last post Apr 21 at 8:35 PM")
        let add = app.buttons["announcements.list.addButton"]
        add.tap()
        let done = app.buttons["announcements.edit.doneButton"]
        done.tap()
    }

    func testCreateEditDeleteAnnouncement15() {
        let app = XCUIApplication()
        let card = app.buttons["course-card.card-40"]
        let exists = card.waitForExistence(timeout: 10)
        XCTAssert(exists)
        card.tap()
        let tab = app.buttons["courses-details.announcements-cell"]
        tab.tap()
        let row = app.buttons["announcements.list.announcement.row-0"]
        XCTAssertEqual(row.label, "Announcement 1 Last post Apr 21 at 8:35 PM")
        let add = app.buttons["announcements.list.addButton"]
        add.tap()
        let done = app.buttons["announcements.edit.doneButton"]
        done.tap()
    }

    func testCreateEditDeleteAnnouncement16() {
        let app = XCUIApplication()
        let card = app.buttons["course-card.card-40"]
        let exists = card.waitForExistence(timeout: 10)
        XCTAssert(exists)
        card.tap()
        let tab = app.buttons["courses-details.announcements-cell"]
        tab.tap()
        let row = app.buttons["announcements.list.announcement.row-0"]
        XCTAssertEqual(row.label, "Announcement 1 Last post Apr 21 at 8:35 PM")
        let add = app.buttons["announcements.list.addButton"]
        add.tap()
        let done = app.buttons["announcements.edit.doneButton"]
        done.tap()
    }
}

class AnnouncementTests8: TeacherUITests {
    func testCreateEditDeleteAnnouncement() {
        let app = XCUIApplication()
        let card = app.buttons["course-card.card-40"]
        let exists = card.waitForExistence(timeout: 10)
        XCTAssert(exists)
        card.tap()
        let tab = app.buttons["courses-details.announcements-cell"]
        tab.tap()
        let row = app.buttons["announcements.list.announcement.row-0"]
        XCTAssertEqual(row.label, "Announcement 1 Last post Apr 21 at 8:35 PM")
        let add = app.buttons["announcements.list.addButton"]
        add.tap()
        let done = app.buttons["announcements.edit.doneButton"]
        done.tap()
    }

    func testCreateEditDeleteAnnouncement1() {
        let app = XCUIApplication()
        let card = app.buttons["course-card.card-40"]
        let exists = card.waitForExistence(timeout: 10)
        XCTAssert(exists)
        card.tap()
        let tab = app.buttons["courses-details.announcements-cell"]
        tab.tap()
        let row = app.buttons["announcements.list.announcement.row-0"]
        XCTAssertEqual(row.label, "Announcement 1 Last post Apr 21 at 8:35 PM")
        let add = app.buttons["announcements.list.addButton"]
        add.tap()
        let done = app.buttons["announcements.edit.doneButton"]
        done.tap()
    }

    func testCreateEditDeleteAnnouncement2() {
        let app = XCUIApplication()
        let card = app.buttons["course-card.card-40"]
        let exists = card.waitForExistence(timeout: 10)
        XCTAssert(exists)
        card.tap()
        let tab = app.buttons["courses-details.announcements-cell"]
        tab.tap()
        let row = app.buttons["announcements.list.announcement.row-0"]
        XCTAssertEqual(row.label, "Announcement 1 Last post Apr 21 at 8:35 PM")
        let add = app.buttons["announcements.list.addButton"]
        add.tap()
        let done = app.buttons["announcements.edit.doneButton"]
        done.tap()
    }

    func testCreateEditDeleteAnnouncement3() {
        let app = XCUIApplication()
        let card = app.buttons["course-card.card-40"]
        let exists = card.waitForExistence(timeout: 10)
        XCTAssert(exists)
        card.tap()
        let tab = app.buttons["courses-details.announcements-cell"]
        tab.tap()
        let row = app.buttons["announcements.list.announcement.row-0"]
        XCTAssertEqual(row.label, "Announcement 1 Last post Apr 21 at 8:35 PM")
        let add = app.buttons["announcements.list.addButton"]
        add.tap()
        let done = app.buttons["announcements.edit.doneButton"]
        done.tap()
    }

    func testCreateEditDeleteAnnouncement4() {
        let app = XCUIApplication()
        let card = app.buttons["course-card.card-40"]
        let exists = card.waitForExistence(timeout: 10)
        XCTAssert(exists)
        card.tap()
        let tab = app.buttons["courses-details.announcements-cell"]
        tab.tap()
        let row = app.buttons["announcements.list.announcement.row-0"]
        XCTAssertEqual(row.label, "Announcement 1 Last post Apr 21 at 8:35 PM")
        let add = app.buttons["announcements.list.addButton"]
        add.tap()
        let done = app.buttons["announcements.edit.doneButton"]
        done.tap()
    }

    func testCreateEditDeleteAnnouncement5() {
        let app = XCUIApplication()
        let card = app.buttons["course-card.card-40"]
        let exists = card.waitForExistence(timeout: 10)
        XCTAssert(exists)
        card.tap()
        let tab = app.buttons["courses-details.announcements-cell"]
        tab.tap()
        let row = app.buttons["announcements.list.announcement.row-0"]
        XCTAssertEqual(row.label, "Announcement 1 Last post Apr 21 at 8:35 PM")
        let add = app.buttons["announcements.list.addButton"]
        add.tap()
        let done = app.buttons["announcements.edit.doneButton"]
        done.tap()
    }

    func testCreateEditDeleteAnnouncement6() {
        let app = XCUIApplication()
        let card = app.buttons["course-card.card-40"]
        let exists = card.waitForExistence(timeout: 10)
        XCTAssert(exists)
        card.tap()
        let tab = app.buttons["courses-details.announcements-cell"]
        tab.tap()
        let row = app.buttons["announcements.list.announcement.row-0"]
        XCTAssertEqual(row.label, "Announcement 1 Last post Apr 21 at 8:35 PM")
        let add = app.buttons["announcements.list.addButton"]
        add.tap()
        let done = app.buttons["announcements.edit.doneButton"]
        done.tap()
    }

    func testCreateEditDeleteAnnouncement7() {
        let app = XCUIApplication()
        let card = app.buttons["course-card.card-40"]
        let exists = card.waitForExistence(timeout: 10)
        XCTAssert(exists)
        card.tap()
        let tab = app.buttons["courses-details.announcements-cell"]
        tab.tap()
        let row = app.buttons["announcements.list.announcement.row-0"]
        XCTAssertEqual(row.label, "Announcement 1 Last post Apr 21 at 8:35 PM")
        let add = app.buttons["announcements.list.addButton"]
        add.tap()
        let done = app.buttons["announcements.edit.doneButton"]
        done.tap()
    }

    func testCreateEditDeleteAnnouncement8() {
        let app = XCUIApplication()
        let card = app.buttons["course-card.card-40"]
        let exists = card.waitForExistence(timeout: 10)
        XCTAssert(exists)
        card.tap()
        let tab = app.buttons["courses-details.announcements-cell"]
        tab.tap()
        let row = app.buttons["announcements.list.announcement.row-0"]
        XCTAssertEqual(row.label, "Announcement 1 Last post Apr 21 at 8:35 PM")
        let add = app.buttons["announcements.list.addButton"]
        add.tap()
        let done = app.buttons["announcements.edit.doneButton"]
        done.tap()
    }

    func testCreateEditDeleteAnnouncement9() {
        let app = XCUIApplication()
        let card = app.buttons["course-card.card-40"]
        let exists = card.waitForExistence(timeout: 10)
        XCTAssert(exists)
        card.tap()
        let tab = app.buttons["courses-details.announcements-cell"]
        tab.tap()
        let row = app.buttons["announcements.list.announcement.row-0"]
        XCTAssertEqual(row.label, "Announcement 1 Last post Apr 21 at 8:35 PM")
        let add = app.buttons["announcements.list.addButton"]
        add.tap()
        let done = app.buttons["announcements.edit.doneButton"]
        done.tap()
    }

    func testCreateEditDeleteAnnouncement10() {
        let app = XCUIApplication()
        let card = app.buttons["course-card.card-40"]
        let exists = card.waitForExistence(timeout: 10)
        XCTAssert(exists)
        card.tap()
        let tab = app.buttons["courses-details.announcements-cell"]
        tab.tap()
        let row = app.buttons["announcements.list.announcement.row-0"]
        XCTAssertEqual(row.label, "Announcement 1 Last post Apr 21 at 8:35 PM")
        let add = app.buttons["announcements.list.addButton"]
        add.tap()
        let done = app.buttons["announcements.edit.doneButton"]
        done.tap()
    }

    func testCreateEditDeleteAnnouncement11() {
        let app = XCUIApplication()
        let card = app.buttons["course-card.card-40"]
        let exists = card.waitForExistence(timeout: 10)
        XCTAssert(exists)
        card.tap()
        let tab = app.buttons["courses-details.announcements-cell"]
        tab.tap()
        let row = app.buttons["announcements.list.announcement.row-0"]
        XCTAssertEqual(row.label, "Announcement 1 Last post Apr 21 at 8:35 PM")
        let add = app.buttons["announcements.list.addButton"]
        add.tap()
        let done = app.buttons["announcements.edit.doneButton"]
        done.tap()
    }

    func testCreateEditDeleteAnnouncement12() {
        let app = XCUIApplication()
        let card = app.buttons["course-card.card-40"]
        let exists = card.waitForExistence(timeout: 10)
        XCTAssert(exists)
        card.tap()
        let tab = app.buttons["courses-details.announcements-cell"]
        tab.tap()
        let row = app.buttons["announcements.list.announcement.row-0"]
        XCTAssertEqual(row.label, "Announcement 1 Last post Apr 21 at 8:35 PM")
        let add = app.buttons["announcements.list.addButton"]
        add.tap()
        let done = app.buttons["announcements.edit.doneButton"]
        done.tap()
    }

    func testCreateEditDeleteAnnouncement13() {
        let app = XCUIApplication()
        let card = app.buttons["course-card.card-40"]
        let exists = card.waitForExistence(timeout: 10)
        XCTAssert(exists)
        card.tap()
        let tab = app.buttons["courses-details.announcements-cell"]
        tab.tap()
        let row = app.buttons["announcements.list.announcement.row-0"]
        XCTAssertEqual(row.label, "Announcement 1 Last post Apr 21 at 8:35 PM")
        let add = app.buttons["announcements.list.addButton"]
        add.tap()
        let done = app.buttons["announcements.edit.doneButton"]
        done.tap()
    }

    func testCreateEditDeleteAnnouncement14() {
        let app = XCUIApplication()
        let card = app.buttons["course-card.card-40"]
        let exists = card.waitForExistence(timeout: 10)
        XCTAssert(exists)
        card.tap()
        let tab = app.buttons["courses-details.announcements-cell"]
        tab.tap()
        let row = app.buttons["announcements.list.announcement.row-0"]
        XCTAssertEqual(row.label, "Announcement 1 Last post Apr 21 at 8:35 PM")
        let add = app.buttons["announcements.list.addButton"]
        add.tap()
        let done = app.buttons["announcements.edit.doneButton"]
        done.tap()
    }

    func testCreateEditDeleteAnnouncement15() {
        let app = XCUIApplication()
        let card = app.buttons["course-card.card-40"]
        let exists = card.waitForExistence(timeout: 10)
        XCTAssert(exists)
        card.tap()
        let tab = app.buttons["courses-details.announcements-cell"]
        tab.tap()
        let row = app.buttons["announcements.list.announcement.row-0"]
        XCTAssertEqual(row.label, "Announcement 1 Last post Apr 21 at 8:35 PM")
        let add = app.buttons["announcements.list.addButton"]
        add.tap()
        let done = app.buttons["announcements.edit.doneButton"]
        done.tap()
    }

    func testCreateEditDeleteAnnouncement16() {
        let app = XCUIApplication()
        let card = app.buttons["course-card.card-40"]
        let exists = card.waitForExistence(timeout: 10)
        XCTAssert(exists)
        card.tap()
        let tab = app.buttons["courses-details.announcements-cell"]
        tab.tap()
        let row = app.buttons["announcements.list.announcement.row-0"]
        XCTAssertEqual(row.label, "Announcement 1 Last post Apr 21 at 8:35 PM")
        let add = app.buttons["announcements.list.addButton"]
        add.tap()
        let done = app.buttons["announcements.edit.doneButton"]
        done.tap()
    }
}

class AnnouncementTests9: TeacherUITests {
    func testCreateEditDeleteAnnouncement() {
        let app = XCUIApplication()
        let card = app.buttons["course-card.card-40"]
        let exists = card.waitForExistence(timeout: 10)
        XCTAssert(exists)
        card.tap()
        let tab = app.buttons["courses-details.announcements-cell"]
        tab.tap()
        let row = app.buttons["announcements.list.announcement.row-0"]
        XCTAssertEqual(row.label, "Announcement 1 Last post Apr 21 at 8:35 PM")
        let add = app.buttons["announcements.list.addButton"]
        add.tap()
        let done = app.buttons["announcements.edit.doneButton"]
        done.tap()
    }

    func testCreateEditDeleteAnnouncement1() {
        let app = XCUIApplication()
        let card = app.buttons["course-card.card-40"]
        let exists = card.waitForExistence(timeout: 10)
        XCTAssert(exists)
        card.tap()
        let tab = app.buttons["courses-details.announcements-cell"]
        tab.tap()
        let row = app.buttons["announcements.list.announcement.row-0"]
        XCTAssertEqual(row.label, "Announcement 1 Last post Apr 21 at 8:35 PM")
        let add = app.buttons["announcements.list.addButton"]
        add.tap()
        let done = app.buttons["announcements.edit.doneButton"]
        done.tap()
    }

    func testCreateEditDeleteAnnouncement2() {
        let app = XCUIApplication()
        let card = app.buttons["course-card.card-40"]
        let exists = card.waitForExistence(timeout: 10)
        XCTAssert(exists)
        card.tap()
        let tab = app.buttons["courses-details.announcements-cell"]
        tab.tap()
        let row = app.buttons["announcements.list.announcement.row-0"]
        XCTAssertEqual(row.label, "Announcement 1 Last post Apr 21 at 8:35 PM")
        let add = app.buttons["announcements.list.addButton"]
        add.tap()
        let done = app.buttons["announcements.edit.doneButton"]
        done.tap()
    }

    func testCreateEditDeleteAnnouncement3() {
        let app = XCUIApplication()
        let card = app.buttons["course-card.card-40"]
        let exists = card.waitForExistence(timeout: 10)
        XCTAssert(exists)
        card.tap()
        let tab = app.buttons["courses-details.announcements-cell"]
        tab.tap()
        let row = app.buttons["announcements.list.announcement.row-0"]
        XCTAssertEqual(row.label, "Announcement 1 Last post Apr 21 at 8:35 PM")
        let add = app.buttons["announcements.list.addButton"]
        add.tap()
        let done = app.buttons["announcements.edit.doneButton"]
        done.tap()
    }

    func testCreateEditDeleteAnnouncement4() {
        let app = XCUIApplication()
        let card = app.buttons["course-card.card-40"]
        let exists = card.waitForExistence(timeout: 10)
        XCTAssert(exists)
        card.tap()
        let tab = app.buttons["courses-details.announcements-cell"]
        tab.tap()
        let row = app.buttons["announcements.list.announcement.row-0"]
        XCTAssertEqual(row.label, "Announcement 1 Last post Apr 21 at 8:35 PM")
        let add = app.buttons["announcements.list.addButton"]
        add.tap()
        let done = app.buttons["announcements.edit.doneButton"]
        done.tap()
    }

    func testCreateEditDeleteAnnouncement5() {
        let app = XCUIApplication()
        let card = app.buttons["course-card.card-40"]
        let exists = card.waitForExistence(timeout: 10)
        XCTAssert(exists)
        card.tap()
        let tab = app.buttons["courses-details.announcements-cell"]
        tab.tap()
        let row = app.buttons["announcements.list.announcement.row-0"]
        XCTAssertEqual(row.label, "Announcement 1 Last post Apr 21 at 8:35 PM")
        let add = app.buttons["announcements.list.addButton"]
        add.tap()
        let done = app.buttons["announcements.edit.doneButton"]
        done.tap()
    }

    func testCreateEditDeleteAnnouncement6() {
        let app = XCUIApplication()
        let card = app.buttons["course-card.card-40"]
        let exists = card.waitForExistence(timeout: 10)
        XCTAssert(exists)
        card.tap()
        let tab = app.buttons["courses-details.announcements-cell"]
        tab.tap()
        let row = app.buttons["announcements.list.announcement.row-0"]
        XCTAssertEqual(row.label, "Announcement 1 Last post Apr 21 at 8:35 PM")
        let add = app.buttons["announcements.list.addButton"]
        add.tap()
        let done = app.buttons["announcements.edit.doneButton"]
        done.tap()
    }

    func testCreateEditDeleteAnnouncement7() {
        let app = XCUIApplication()
        let card = app.buttons["course-card.card-40"]
        let exists = card.waitForExistence(timeout: 10)
        XCTAssert(exists)
        card.tap()
        let tab = app.buttons["courses-details.announcements-cell"]
        tab.tap()
        let row = app.buttons["announcements.list.announcement.row-0"]
        XCTAssertEqual(row.label, "Announcement 1 Last post Apr 21 at 8:35 PM")
        let add = app.buttons["announcements.list.addButton"]
        add.tap()
        let done = app.buttons["announcements.edit.doneButton"]
        done.tap()
    }

    func testCreateEditDeleteAnnouncement8() {
        let app = XCUIApplication()
        let card = app.buttons["course-card.card-40"]
        let exists = card.waitForExistence(timeout: 10)
        XCTAssert(exists)
        card.tap()
        let tab = app.buttons["courses-details.announcements-cell"]
        tab.tap()
        let row = app.buttons["announcements.list.announcement.row-0"]
        XCTAssertEqual(row.label, "Announcement 1 Last post Apr 21 at 8:35 PM")
        let add = app.buttons["announcements.list.addButton"]
        add.tap()
        let done = app.buttons["announcements.edit.doneButton"]
        done.tap()
    }

    func testCreateEditDeleteAnnouncement9() {
        let app = XCUIApplication()
        let card = app.buttons["course-card.card-40"]
        let exists = card.waitForExistence(timeout: 10)
        XCTAssert(exists)
        card.tap()
        let tab = app.buttons["courses-details.announcements-cell"]
        tab.tap()
        let row = app.buttons["announcements.list.announcement.row-0"]
        XCTAssertEqual(row.label, "Announcement 1 Last post Apr 21 at 8:35 PM")
        let add = app.buttons["announcements.list.addButton"]
        add.tap()
        let done = app.buttons["announcements.edit.doneButton"]
        done.tap()
    }

    func testCreateEditDeleteAnnouncement10() {
        let app = XCUIApplication()
        let card = app.buttons["course-card.card-40"]
        let exists = card.waitForExistence(timeout: 10)
        XCTAssert(exists)
        card.tap()
        let tab = app.buttons["courses-details.announcements-cell"]
        tab.tap()
        let row = app.buttons["announcements.list.announcement.row-0"]
        XCTAssertEqual(row.label, "Announcement 1 Last post Apr 21 at 8:35 PM")
        let add = app.buttons["announcements.list.addButton"]
        add.tap()
        let done = app.buttons["announcements.edit.doneButton"]
        done.tap()
    }

    func testCreateEditDeleteAnnouncement11() {
        let app = XCUIApplication()
        let card = app.buttons["course-card.card-40"]
        let exists = card.waitForExistence(timeout: 10)
        XCTAssert(exists)
        card.tap()
        let tab = app.buttons["courses-details.announcements-cell"]
        tab.tap()
        let row = app.buttons["announcements.list.announcement.row-0"]
        XCTAssertEqual(row.label, "Announcement 1 Last post Apr 21 at 8:35 PM")
        let add = app.buttons["announcements.list.addButton"]
        add.tap()
        let done = app.buttons["announcements.edit.doneButton"]
        done.tap()
    }

    func testCreateEditDeleteAnnouncement12() {
        let app = XCUIApplication()
        let card = app.buttons["course-card.card-40"]
        let exists = card.waitForExistence(timeout: 10)
        XCTAssert(exists)
        card.tap()
        let tab = app.buttons["courses-details.announcements-cell"]
        tab.tap()
        let row = app.buttons["announcements.list.announcement.row-0"]
        XCTAssertEqual(row.label, "Announcement 1 Last post Apr 21 at 8:35 PM")
        let add = app.buttons["announcements.list.addButton"]
        add.tap()
        let done = app.buttons["announcements.edit.doneButton"]
        done.tap()
    }

    func testCreateEditDeleteAnnouncement13() {
        let app = XCUIApplication()
        let card = app.buttons["course-card.card-40"]
        let exists = card.waitForExistence(timeout: 10)
        XCTAssert(exists)
        card.tap()
        let tab = app.buttons["courses-details.announcements-cell"]
        tab.tap()
        let row = app.buttons["announcements.list.announcement.row-0"]
        XCTAssertEqual(row.label, "Announcement 1 Last post Apr 21 at 8:35 PM")
        let add = app.buttons["announcements.list.addButton"]
        add.tap()
        let done = app.buttons["announcements.edit.doneButton"]
        done.tap()
    }

    func testCreateEditDeleteAnnouncement14() {
        let app = XCUIApplication()
        let card = app.buttons["course-card.card-40"]
        let exists = card.waitForExistence(timeout: 10)
        XCTAssert(exists)
        card.tap()
        let tab = app.buttons["courses-details.announcements-cell"]
        tab.tap()
        let row = app.buttons["announcements.list.announcement.row-0"]
        XCTAssertEqual(row.label, "Announcement 1 Last post Apr 21 at 8:35 PM")
        let add = app.buttons["announcements.list.addButton"]
        add.tap()
        let done = app.buttons["announcements.edit.doneButton"]
        done.tap()
    }

    func testCreateEditDeleteAnnouncement15() {
        let app = XCUIApplication()
        let card = app.buttons["course-card.card-40"]
        let exists = card.waitForExistence(timeout: 10)
        XCTAssert(exists)
        card.tap()
        let tab = app.buttons["courses-details.announcements-cell"]
        tab.tap()
        let row = app.buttons["announcements.list.announcement.row-0"]
        XCTAssertEqual(row.label, "Announcement 1 Last post Apr 21 at 8:35 PM")
        let add = app.buttons["announcements.list.addButton"]
        add.tap()
        let done = app.buttons["announcements.edit.doneButton"]
        done.tap()
    }

    func testCreateEditDeleteAnnouncement16() {
        let app = XCUIApplication()
        let card = app.buttons["course-card.card-40"]
        let exists = card.waitForExistence(timeout: 10)
        XCTAssert(exists)
        card.tap()
        let tab = app.buttons["courses-details.announcements-cell"]
        tab.tap()
        let row = app.buttons["announcements.list.announcement.row-0"]
        XCTAssertEqual(row.label, "Announcement 1 Last post Apr 21 at 8:35 PM")
        let add = app.buttons["announcements.list.addButton"]
        add.tap()
        let done = app.buttons["announcements.edit.doneButton"]
        done.tap()
    }
}
