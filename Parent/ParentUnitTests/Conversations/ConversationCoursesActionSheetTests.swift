//
// This file is part of Canvas.
// Copyright (C) 2020-present  Instructure, Inc.
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

import XCTest
@testable import Parent
@testable import Core
import TestsFoundation

class ConversationCoursesActionSheetTests: ParentTestCase {
    lazy var controller = ConversationCoursesActionSheet.create(delegate: self)

    let selectedExpectation = XCTestExpectation(description: "selected")
    var selectedCourse: Course?
    var selectedUser: User?

    override func setUp() {
        super.setUp()
        env.mockStore = true
    }

    func loadView() {
        controller.view.frame = CGRect(x: 0, y: 0, width: 300, height: 800)
        controller.viewDidLoad()
    }

    func testLayout() {
        loadView()
        let loadingIndicator = controller.view.subviews.last as! UIActivityIndicatorView
        XCTAssertTrue(loadingIndicator.isAnimating)

        let enrollments = controller.enrollments as! TestStore
        wait(for: [enrollments.exhaustExpectation], timeout: 0.1)
    }

    func testActivityIndicator() {
        env.mockStore = false

        let enrollmentsTask = api.mock(GetEnrollmentsRequest(context: ContextModel.currentUser,
                                                             userID: nil,
                                                             gradingPeriodID: nil,
                                                             types: ["ObserverEnrollment"],
                                                             includes: [.observed_users]),
                                       value: [])
        let coursesTask = api.mock(GetCoursesRequest(enrollmentState: .active, state: nil, perPage: 99))

        enrollmentsTask.paused = true
        coursesTask.paused = true

        loadView()

        XCTAssertTrue(controller.loadingIndicator.isAnimating)

        enrollmentsTask.paused = false
        coursesTask.paused = false

        XCTAssertFalse(controller.loadingIndicator.isAnimating)
    }

    func testShowError() {
        env.mockStore = false
        api.mock(GetEnrollmentsRequest(context: ContextModel.currentUser,
                                       userID: nil,
                                       gradingPeriodID: nil,
                                       types: ["ObserverEnrollment"],
                                       includes: [.observed_users]),
                 error: NSError.instructureError("The Message"))

        loadView()

        XCTAssert(router.presented is UIAlertController)
    }

    func testNumberOfRowsInSection() {
        loadView()

        XCTAssertEqual(controller.tableView(controller.tableView, numberOfRowsInSection: 0), 0)

        Enrollment.make(from: .make(course_id: "1", type: "ObserverEnrollment", observed_user: .make()), course: .make(from: .make(id: "1"), in: databaseClient), in: databaseClient)
        XCTAssertEqual(controller.tableView(controller.tableView, numberOfRowsInSection: 0), 1)
    }

    func testCellForRowAt() {
        let enrollment = Enrollment.make(from: .make(course_id: "1", type: "ObserverEnrollment", observed_user: .make()), course: .make(from: .make(id: "1"), in: databaseClient), in: databaseClient)
        loadView()

        let cell = controller.tableView(controller.tableView, cellForRowAt: IndexPath(row: 0, section: 0))
        XCTAssertEqual(cell.textLabel?.text, enrollment.course?.name)
        XCTAssertEqual(cell.detailTextLabel?.text, "for \(enrollment.observedUser?.name ?? "")")
    }

    func testCellTapped() {
        let enrollment = Enrollment.make(from: .make(course_id: "1", type: "ObserverEnrollment", observed_user: .make()), course: .make(from: .make(id: "1"), in: databaseClient), in: databaseClient)
        loadView()

        _ = controller.tableView(controller.tableView, didSelectRowAt: IndexPath(row: 0, section: 0))
        wait(for: [selectedExpectation], timeout: 1)
        XCTAssertEqual(selectedCourse, enrollment.course)
        XCTAssertEqual(selectedUser, enrollment.observedUser)
    }
}

extension ConversationCoursesActionSheetTests: ConversationCoursesActionSheetDelegate {
    func courseSelected(course: Course, user: User) {
        selectedCourse = course
        selectedUser = user
        selectedExpectation.fulfill()
    }
}
