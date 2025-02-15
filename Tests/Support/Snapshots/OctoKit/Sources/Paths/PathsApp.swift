// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths {
    public static var app: App {
        App(path: "/app")
    }

    public struct App {
        /// Path: `/app`
        public let path: String

        /// Get the authenticated app
        ///
        /// Returns the GitHub App associated with the authentication credentials used. To see how many app installations are associated with this GitHub App, see the `installations_count` in the response. For more details about your app's installations, see the "[List installations for the authenticated app](https://docs.github.com/rest/reference/apps#list-installations-for-the-authenticated-app)" endpoint.
        /// 
        /// You must use a [JWT](https://docs.github.com/apps/building-github-apps/authenticating-with-github-apps/#authenticating-as-a-github-app) to access this endpoint.
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/apps#get-the-authenticated-app)
        public var get: Request<OctoKit.Integration> {
            Request(method: "GET", url: path, id: "apps/get-authenticated")
        }
    }
}
