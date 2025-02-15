// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.Repos.WithOwner.WithRepo.Hooks.WithHookID {
    public var tests: Tests {
        Tests(path: path + "/tests")
    }

    public struct Tests {
        /// Path: `/repos/{owner}/{repo}/hooks/{hook_id}/tests`
        public let path: String

        /// Test the push repository webhook
        ///
        /// This will trigger the hook with the latest push to the current repository if the hook is subscribed to `push` events. If the hook is not subscribed to `push` events, the server will respond with 204 but no test POST will be generated.
        /// 
        /// **Note**: Previously `/repos/:owner/:repo/hooks/:hook_id/test`
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/repos#test-the-push-repository-webhook)
        public var post: Request<Void> {
            Request(method: "POST", url: path, id: "repos/test-push-webhook")
        }
    }
}
