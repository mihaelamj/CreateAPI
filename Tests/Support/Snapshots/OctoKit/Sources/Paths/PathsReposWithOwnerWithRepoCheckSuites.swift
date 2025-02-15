// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.Repos.WithOwner.WithRepo {
    public var checkSuites: CheckSuites {
        CheckSuites(path: path + "/check-suites")
    }

    public struct CheckSuites {
        /// Path: `/repos/{owner}/{repo}/check-suites`
        public let path: String

        /// Create a check suite
        ///
        /// **Note:** The Checks API only looks for pushes in the repository where the check suite or check run were created. Pushes to a branch in a forked repository are not detected and return an empty `pull_requests` array and a `null` value for `head_branch`.
        /// 
        /// By default, check suites are automatically created when you create a [check run](https://docs.github.com/rest/reference/checks#check-runs). You only need to use this endpoint for manually creating check suites when you've disabled automatic creation using "[Update repository preferences for check suites](https://docs.github.com/rest/reference/checks#update-repository-preferences-for-check-suites)". Your GitHub App must have the `checks:write` permission to create check suites.
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/checks#create-a-check-suite)
        public func post(headSha: String) -> Request<OctoKit.CheckSuite> {
            Request(method: "POST", url: path, body: ["head_sha": headSha], id: "checks/create-suite")
        }
    }
}
