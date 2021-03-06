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

import Foundation

// https://canvas.instructure.com/doc/api/tabs.html#method.tabs.index
public struct GetTabsRequest: APIRequestable {
    public typealias Response = [APITab]

    let context: Context
    let perPage: Int?

    public init (context: Context, perPage: Int? = 100) {
        self.context = context
        self.perPage = perPage
    }

    public var query: [APIQueryItem] {
        var queryItems = [APIQueryItem]()
        if let perPage = perPage {
            queryItems.append(.value("per_page", "\(perPage)"))
        }
        return queryItems
    }

    public var path: String {
        return "\(context.pathComponent)/tabs"
    }
}
