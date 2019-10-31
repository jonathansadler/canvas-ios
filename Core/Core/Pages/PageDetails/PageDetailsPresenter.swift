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
import CoreData

class PageDetailsPresenter {

    let env: AppEnvironment
    weak var viewController: PageDetailsViewProtocol?
    let context: Context
    let pageURL: String
    let app: App

    init(env: AppEnvironment = .shared, viewController vc: PageDetailsViewProtocol, context: Context, pageURL: String, app: App) {
        self.env = env
        self.context = context
        self.pageURL = pageURL
        self.app = app
        self.viewController = vc
    }

    lazy var colors = env.subscribe(GetCustomColors()) { [weak self] in
        self?.updateNavBar()
    }

    lazy var courses = env.subscribe(GetCourse(courseID: context.id)) { [weak self] in
        self?.updateNavBar()
    }

    lazy var groups = env.subscribe(GetGroup(groupID: context.id)) { [weak self] in
        self?.updateNavBar()
    }

    var page: Page? {
        return pages?.first
    }
    var pages: Store<GetPageDetail>?

    func viewDidLoad() {
        if context.contextType == .course {
            courses.refresh()
        } else {
            groups.refresh()
        }
        colors.refresh()
//        pages.refresh(force: true)

        env.api.makeRequest(GetPageRequest(context: context, url: pageURL)) { [weak self, context, pageURL] apiPage, response, error in
            guard let apiPage = apiPage else {
                // TODO: self?.viewController?.showError(error ?? .defaultError)
                return
            }
            self?.pages = self?.env.subscribe(GetPageDetail(context: context, id: apiPage.page_id.value, url: pageURL)) { [weak self] in
                self?.viewController?.update()
            }
            self?.pages?.refresh(force: true)
        }
//        let useCase = GetPage(context: context, url: pageURL)
//        useCase.fetch(environment: env, force: true) { [weak self] (apiPage, response, error) in
//            self?.env.database.viewContext.perform {
//                self?.pages = self?.env.subscribe(LocalUseCase(scope: Scope.where(#keyPath(Page.id), equals: apiPage!.page_id))) {
//                    self?.viewController?.update()
//                }
//                self?.pages?.refresh()
//            }
//        }

        NotificationCenter.default.addObserver(self, selector: #selector(pageEdited), name: Notification.Name("page-edit"), object: nil)

    }

    @objc
    func pageEdited(notification: NSNotification) {
        guard let rawEditData = notification.userInfo else {
            return
        }

        env.database.viewContext.perform {
        do {
            let jsonData = try JSONSerialization.data(withJSONObject: rawEditData, options: .prettyPrinted)
            let decoder = JSONDecoder()
            decoder.dateDecodingStrategy = .iso8601
            let apiPage = try decoder.decode(APIPage.self, from: jsonData)

            // if the front page was changed, ensure only one page has the front page set
            let frontPageChanged = apiPage.front_page != self.page?.isFrontPage
            if frontPageChanged {
                let scope = GetFrontPage(context: self.context).scope
                let currentFrontPage: Page? = self.env.database.viewContext.fetch(scope.predicate, sortDescriptors: nil).first
                currentFrontPage?.isFrontPage = false
                try self.env.database.viewContext.save()
            }
            self.pages?.useCase.url = apiPage.url
            self.pages?.refresh(force: true)

//            if let page = self.page {
//                //page.title = apiPage.title
//                //page.update(from: apiPage)
//                print(page)
//            }
//            try self.env.database.viewContext.save()

//            self.pages = self.env.subscribe(GetPage(context: context, url: apiPage.url)) { [weak self] in
//                self?.viewController.update()
//            }
//            self.pages.refresh()
        } catch {
            return
        }}
    }

    func updateNavBar() {
        guard let name = courses.first?.name ?? groups.first?.name, let color = courses.first?.color ?? groups.first?.color else {
            return
        }
        self.viewController?.updateNavBar(subtitle: name, color: color)
    }

    func canEdit() -> Bool {
        switch app {
        case .student:
            guard let page = page else {
                return false
            }
            return page.editingRoles.contains("students") == true || page.editingRoles.contains("public")
        case .teacher:
            return true
        default:
            return false
        }
    }

    func canDelete() -> Bool {
        return app == .teacher
    }

    func onUpdate() {

    }
}

class GetPageDetail: APIUseCase {
    typealias Model = Page

    let context: Context
    let id: String
    var url: String

    var cacheKey: String? {
        return "\(context.pathComponent)/pages/\(id)"
    }

    init(context: Context, id: String, url: String) {
        self.context = context
        self.id = id
        self.url = url
    }

    var scope: Scope {
        return .where(#keyPath(Page.id), equals: id)
    }

    var request: GetPageRequest {
        return GetPageRequest(context: context, url: url)
    }

    func write(response: APIPage?, urlResponse: URLResponse?, to client: NSManagedObjectContext) {
        guard let response = response else {
            return
        }
        let page = Page.save(response, in: client)
        page.contextID = context.canvasContextID
    }
}
