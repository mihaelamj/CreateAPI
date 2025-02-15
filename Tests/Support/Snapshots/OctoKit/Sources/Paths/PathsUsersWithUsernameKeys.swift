// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.Users.WithUsername {
    public var keys: Keys {
        Keys(path: path + "/keys")
    }

    public struct Keys {
        /// Path: `/users/{username}/keys`
        public let path: String

        /// List public keys for a user
        ///
        /// Lists the _verified_ public SSH keys for a user. This is accessible by anyone.
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/users#list-public-keys-for-a-user)
        public func get(perPage: Int? = nil, page: Int? = nil) -> Request<[OctoKit.KeySimple]> {
            Request(method: "GET", url: path, query: makeGetQuery(perPage, page), id: "users/list-public-keys-for-user")
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
