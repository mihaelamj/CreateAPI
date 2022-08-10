// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.User {
    public var followers: Followers {
        Followers(path: path + "/followers")
    }

    public struct Followers {
        /// Path: `/user/followers`
        public let path: String

        /// List followers of the authenticated user
        ///
        /// Lists the people following the authenticated user.
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/users#list-followers-of-the-authenticated-user)
        public func get(perPage: Int? = nil, page: Int? = nil) -> Request<[OctoKit.SimpleUser]> {
            Request(method: "GET", url: path, query: makeGetQuery(perPage, page), id: "users/list-followers-for-authenticated-user")
        }

        public enum GetResponseHeaders {
            public static let link = HTTPHeader<String>(field: "Link")
        }

        private func makeGetQuery(_ perPage: Int?, _ page: Int?) -> [(String, String?)] {
            let encoder = URLQueryEncoder()
            encoder.encode(perPage, forKey: "per_page")
            encoder.encode(page, forKey: "page")
            return encoder.items
        }
    }
}