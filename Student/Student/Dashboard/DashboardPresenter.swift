//
// This file is part of Canvas.
// Copyright (C) 2018-present  Instructure, Inc.
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

import UIKit
import Core

class DashboardPresenter {
    weak var view: DashboardViewProtocol?
    let environment: AppEnvironment
    let router: RouterProtocol

    lazy var groups: Store<GetUserGroups> = {
        let useCase = GetUserGroups()
        return environment.subscribe(useCase) { [weak self] in
            self?.update()
        }
    }()

    lazy var courses: Store<GetCourses> = {
        let useCase = GetCourses(showFavorites: true)
        return environment.subscribe(useCase) { [weak self] in
            self?.update()
        }
    }()

    lazy var colors: Store<GetCustomColors> = {
        let useCase = GetCustomColors()
        return environment.subscribe(useCase) { [weak self] in
            self?.update()
        }
    }()

    lazy var settings: Store<GetUserSettings> = {
        let useCase = GetUserSettings(userID: "self")
        return environment.subscribe(useCase) { [weak self] in
            self?.update()
        }
    }()

    init(env: AppEnvironment = .shared, view: DashboardViewProtocol?) {
        self.environment = env
        self.router = env.router
        self.view = view
    }

    func courseWasSelected(_ courseID: String) {
        // route to details screen
    }

    func editButtonWasTapped() {
        // route to edit screen
    }

    func viewIsReady() {
        loadDataFromServer()
        update()
    }

    func pageViewStarted() {
        // log page view
    }

    func pageViewEnded() {
        // log page view
    }

    func courseOptionsWasSelected(_ courseID: String) {
        // route/modal
    }

    func groupWasSelected(_ groupID: String) {
        // route
    }

    func seeAllWasTapped() {
        // route
        if let vc = view as? UIViewController {
            router.route(to: .courses, from: vc)
        }
    }

    func refreshRequested() {
        loadDataFromServer(force: true)
    }

    func loadDataFromServer(force: Bool = false) {
        groups.exhaust(while: { _ in true })
        colors.refresh(force: force)
        courses.exhaust(while: { _ in true })
        settings.refresh(force: force)
    }

    func update() {
        view?.updateDisplay()
    }
}
