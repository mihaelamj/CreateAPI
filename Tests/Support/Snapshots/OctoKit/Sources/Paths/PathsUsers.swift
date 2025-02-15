// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths {
    public static var users: Users {
        Users(path: "/users")
    }

    public struct Users {
        /// Path: `/users`
        public let path: String

        /// List users
        ///
        /// Lists all users, in the order that they signed up on GitHub. This list includes personal user accounts and organization accounts.
        /// 
        /// Note: Pagination is powered exclusively by the `since` parameter. Use the [Link header](https://docs.github.com/rest/overview/resources-in-the-rest-api#link-header) to get the URL for the next page of users.
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/users#list-users)
        public func get(since: Int? = nil, perPage: Int? = nil) -> Request<[OctoKit.SimpleUser]> {
            Request(method: "GET", url: path, query: makeGetQuery(since, perPage), id: "users/list")
        }

        public enum GetResponseHeaders {
            public static let link = HTTPHeader<String>(field: "Link")
        }

        private func makeGetQuery(_ since: Int?, _ perPage: Int?) -> [(String, String?)] {
            let encoder = URLQueryEncoder()
            encoder.encode(since, forKey: "since")
            encoder.encode(perPage, forKey: "per_page")
            return encoder.items
        }
    }
}
