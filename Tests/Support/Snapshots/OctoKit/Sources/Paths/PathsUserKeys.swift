// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.User {
    public var keys: Keys {
        Keys(path: path + "/keys")
    }

    public struct Keys {
        /// Path: `/user/keys`
        public let path: String

        /// List public SSH keys for the authenticated user
        ///
        /// Lists the public SSH keys for the authenticated user's GitHub account. Requires that you are authenticated via Basic Auth or via OAuth with at least `read:public_key` [scope](https://docs.github.com/apps/building-oauth-apps/understanding-scopes-for-oauth-apps/).
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/users#list-public-ssh-keys-for-the-authenticated-user)
        public func get(perPage: Int? = nil, page: Int? = nil) -> Request<[OctoKit.Key]> {
            Request(method: "GET", url: path, query: makeGetQuery(perPage, page), id: "users/list-public-ssh-keys-for-authenticated-user")
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

        /// Create a public SSH key for the authenticated user
        ///
        /// Adds a public SSH key to the authenticated user's GitHub account. Requires that you are authenticated via Basic Auth, or OAuth with at least `write:public_key` [scope](https://docs.github.com/apps/building-oauth-apps/understanding-scopes-for-oauth-apps/).
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/users#create-a-public-ssh-key-for-the-authenticated-user)
        public func post(_ body: PostRequest) -> Request<OctoKit.Key> {
            Request(method: "POST", url: path, body: body, id: "users/create-public-ssh-key-for-authenticated-user")
        }

        public struct PostRequest: Encodable {
            /// A descriptive name for the new key.
            ///
            /// Example: "Personal MacBook Air"
            public var title: String?
            /// The public SSH key to add to your GitHub account.
            public var key: String

            public init(title: String? = nil, key: String) {
                self.title = title
                self.key = key
            }

            public func encode(to encoder: Encoder) throws {
                var values = encoder.container(keyedBy: StringCodingKey.self)
                try values.encodeIfPresent(title, forKey: "title")
                try values.encode(key, forKey: "key")
            }
        }
    }
}
