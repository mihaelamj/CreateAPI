// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.User.Keys {
    public func keyID(_ keyID: Int) -> WithKeyID {
        WithKeyID(path: "\(path)/\(keyID)")
    }

    public struct WithKeyID {
        /// Path: `/user/keys/{key_id}`
        public let path: String

        /// Get a public SSH key for the authenticated user
        ///
        /// View extended details for a single public SSH key. Requires that you are authenticated via Basic Auth or via OAuth with at least `read:public_key` [scope](https://docs.github.com/apps/building-oauth-apps/understanding-scopes-for-oauth-apps/).
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/users#get-a-public-ssh-key-for-the-authenticated-user)
        public var get: Request<OctoKit.Key> {
            Request(method: "GET", url: path, id: "users/get-public-ssh-key-for-authenticated-user")
        }

        /// Delete a public SSH key for the authenticated user
        ///
        /// Removes a public SSH key from the authenticated user's GitHub account. Requires that you are authenticated via Basic Auth or via OAuth with at least `admin:public_key` [scope](https://docs.github.com/apps/building-oauth-apps/understanding-scopes-for-oauth-apps/).
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/users#delete-a-public-ssh-key-for-the-authenticated-user)
        public var delete: Request<Void> {
            Request(method: "DELETE", url: path, id: "users/delete-public-ssh-key-for-authenticated-user")
        }
    }
}
