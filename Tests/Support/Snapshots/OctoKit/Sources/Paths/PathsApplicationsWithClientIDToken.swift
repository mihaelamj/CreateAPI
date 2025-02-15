// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.Applications.WithClientID {
    public var token: Token {
        Token(path: path + "/token")
    }

    public struct Token {
        /// Path: `/applications/{client_id}/token`
        public let path: String

        /// Check a token
        ///
        /// OAuth applications can use a special API method for checking OAuth token validity without exceeding the normal rate limits for failed login attempts. Authentication works differently with this particular endpoint. You must use [Basic Authentication](https://docs.github.com/rest/overview/other-authentication-methods#basic-authentication) to use this endpoint, where the username is the OAuth application `client_id` and the password is its `client_secret`. Invalid tokens will return `404 NOT FOUND`.
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/apps#check-a-token)
        public func post(accessToken: String) -> Request<OctoKit.Authorization> {
            Request(method: "POST", url: path, body: ["access_token": accessToken], id: "apps/check-token")
        }

        /// Reset a token
        ///
        /// OAuth applications can use this API method to reset a valid OAuth token without end-user involvement. Applications must save the "token" property in the response because changes take effect immediately. You must use [Basic Authentication](https://docs.github.com/rest/overview/other-authentication-methods#basic-authentication) when accessing this endpoint, using the OAuth application's `client_id` and `client_secret` as the username and password. Invalid tokens will return `404 NOT FOUND`.
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/apps#reset-a-token)
        public func patch(accessToken: String) -> Request<OctoKit.Authorization> {
            Request(method: "PATCH", url: path, body: ["access_token": accessToken], id: "apps/reset-token")
        }

        /// Delete an app token
        ///
        /// OAuth application owners can revoke a single token for an OAuth application. You must use [Basic Authentication](https://docs.github.com/rest/overview/other-authentication-methods#basic-authentication) when accessing this endpoint, using the OAuth application's `client_id` and `client_secret` as the username and password.
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/apps#delete-an-app-token)
        public func delete(accessToken: String) -> Request<Void> {
            Request(method: "DELETE", url: path, body: ["access_token": accessToken], id: "apps/delete-token")
        }
    }
}
