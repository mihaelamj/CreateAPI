// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.User.Codespaces.WithCodespaceName {
    public var stop: Stop {
        Stop(path: path + "/stop")
    }

    public struct Stop {
        /// Path: `/user/codespaces/{codespace_name}/stop`
        public let path: String

        /// Stop a codespace for the authenticated user
        ///
        /// Stops a user's codespace.
        /// 
        /// You must authenticate using an access token with the `codespace` scope to use this endpoint.
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/codespaces#stop-a-codespace-for-the-authenticated-user)
        public var post: Request<OctoKit.Codespace> {
            Request(method: "POST", url: path, id: "codespaces/stop-for-authenticated-user")
        }
    }
}
