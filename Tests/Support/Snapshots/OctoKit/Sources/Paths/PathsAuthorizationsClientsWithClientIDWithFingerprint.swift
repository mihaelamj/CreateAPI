// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.Authorizations.Clients.WithClientID {
    public func fingerprint(_ fingerprint: String) -> WithFingerprint {
        WithFingerprint(path: "\(path)/\(fingerprint)")
    }

    public struct WithFingerprint {
        /// Path: `/authorizations/clients/{client_id}/{fingerprint}`
        public let path: String

        /// Get-or-create an authorization for a specific app and fingerprint
        ///
        /// **Deprecation Notice:** GitHub will discontinue the [OAuth Authorizations API](https://docs.github.com/rest/reference/oauth-authorizations/), which is used by integrations to create personal access tokens and OAuth tokens, and you must now create these tokens using our [web application flow](https://docs.github.com/developers/apps/authorizing-oauth-apps#web-application-flow). The [OAuth Authorizations API](https://docs.github.com/rest/reference/oauth-authorizations) will be removed on November, 13, 2020. For more information, including scheduled brownouts, see the [blog post](https://developer.github.com/changes/2020-02-14-deprecating-oauth-auth-endpoint/).
        /// 
        /// **Warning:** Apps must use the [web application flow](https://docs.github.com/apps/building-oauth-apps/authorizing-oauth-apps/#web-application-flow) to obtain OAuth tokens that work with GitHub SAML organizations. OAuth tokens created using the Authorizations API will be unable to access GitHub SAML organizations. For more information, see the [blog post](https://developer.github.com/changes/2019-11-05-deprecated-passwords-and-authorizations-api).
        /// 
        /// This method will create a new authorization for the specified OAuth application, only if an authorization for that application and fingerprint do not already exist for the user. The URL includes the 20 character client ID for the OAuth app that is requesting the token. `fingerprint` is a unique string to distinguish an authorization from others created for the same client ID and user. It returns the user's existing authorization for the application if one is present. Otherwise, it creates and returns a new one.
        /// 
        /// If you have two-factor authentication setup, Basic Authentication for this endpoint requires that you use a one-time password (OTP) and your username and password instead of tokens. For more information, see "[Working with two-factor authentication](https://docs.github.com/rest/overview/other-authentication-methods#working-with-two-factor-authentication)."
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/oauth-authorizations#get-or-create-an-authorization-for-a-specific-app-and-fingerprint)
        @available(*, deprecated, message: "Deprecated")
        public func put(_ body: PutRequest) -> Request<OctoKit.Authorization> {
            Request(method: "PUT", url: path, body: body, id: "oauth-authorizations/get-or-create-authorization-for-app-and-fingerprint")
        }

        public enum PutResponseHeaders {
            public static let location = HTTPHeader<String>(field: "Location")
        }

        public struct PutRequest: Encodable {
            /// The OAuth app client secret for which to create the token.
            public var clientSecret: String
            /// A list of scopes that this authorization is in.
            ///
            /// Example: ["public_repo", "user"]
            public var scopes: [String]?
            /// A note to remind you what the OAuth token is for.
            ///
            /// Example: "Update all gems"
            public var note: String?
            /// A URL to remind you what app the OAuth token is for.
            public var noteURL: String?

            public init(clientSecret: String, scopes: [String]? = nil, note: String? = nil, noteURL: String? = nil) {
                self.clientSecret = clientSecret
                self.scopes = scopes
                self.note = note
                self.noteURL = noteURL
            }

            public func encode(to encoder: Encoder) throws {
                var values = encoder.container(keyedBy: StringCodingKey.self)
                try values.encode(clientSecret, forKey: "client_secret")
                try values.encodeIfPresent(scopes, forKey: "scopes")
                try values.encodeIfPresent(note, forKey: "note")
                try values.encodeIfPresent(noteURL, forKey: "note_url")
            }
        }
    }
}
