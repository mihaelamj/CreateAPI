// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.User.Codespaces.Secrets {
    public var publicKey: PublicKey {
        PublicKey(path: path + "/public-key")
    }

    public struct PublicKey {
        /// Path: `/user/codespaces/secrets/public-key`
        public let path: String

        /// Get public key for the authenticated user
        ///
        /// Gets your public key, which you need to encrypt secrets. You need to encrypt a secret before you can create or update secrets. Anyone with one of the 'read:user' or 'user' scopes in their personal access token. User must have Codespaces access to use this endpoint.
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/codespaces#get-public-key-for-the-authenticated-user)
        public var get: Request<OctoKit.CodespacesUserPublicKey> {
            Request(method: "GET", url: path, id: "codespaces/get-public-key-for-authenticated-user")
        }
    }
}
