// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.Repos.WithOwner.WithRepo.Branches.WithBranch.Protection {
    public var requiredStatusChecks: RequiredStatusChecks {
        RequiredStatusChecks(path: path + "/required_status_checks")
    }

    public struct RequiredStatusChecks {
        /// Path: `/repos/{owner}/{repo}/branches/{branch}/protection/required_status_checks`
        public let path: String

        /// Get status checks protection
        ///
        /// Protected branches are available in public repositories with GitHub Free and GitHub Free for organizations, and in public and private repositories with GitHub Pro, GitHub Team, GitHub Enterprise Cloud, and GitHub Enterprise Server. For more information, see [GitHub's products](https://help.github.com/github/getting-started-with-github/githubs-products) in the GitHub Help documentation.
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/repos#get-status-checks-protection)
        public var get: Request<OctoKit.StatusCheckPolicy> {
            Request(method: "GET", url: path, id: "repos/get-status-checks-protection")
        }

        /// Update status check protection
        ///
        /// Protected branches are available in public repositories with GitHub Free and GitHub Free for organizations, and in public and private repositories with GitHub Pro, GitHub Team, GitHub Enterprise Cloud, and GitHub Enterprise Server. For more information, see [GitHub's products](https://help.github.com/github/getting-started-with-github/githubs-products) in the GitHub Help documentation.
        /// 
        /// Updating required status checks requires admin or owner permissions to the repository and branch protection to be enabled.
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/repos#update-status-check-protection)
        public func patch(_ body: PatchRequest? = nil) -> Request<OctoKit.StatusCheckPolicy> {
            Request(method: "PATCH", url: path, body: body, id: "repos/update-status-check-protection")
        }

        public struct PatchRequest: Encodable {
            /// Require branches to be up to date before merging.
            public var isStrict: Bool?
            /// **Deprecated**: The list of status checks to require in order to merge into this branch. If any of these checks have recently been set by a particular GitHub App, they will be required to come from that app in future for the branch to merge. Use `checks` instead of `contexts` for more fine-grained control.
            ///
            /// - warning: Deprecated.
            public var contexts: [String]?
            /// The list of status checks to require in order to merge into this branch.
            public var checks: [Check]?

            public struct Check: Encodable {
                /// The name of the required check
                public var context: String
                /// The ID of the GitHub App that must provide this check. Omit this field to automatically select the GitHub App that has recently provided this check, or any app if it was not set by a GitHub App. Pass -1 to explicitly allow any app to set the status.
                public var appID: Int?

                public init(context: String, appID: Int? = nil) {
                    self.context = context
                    self.appID = appID
                }

                public func encode(to encoder: Encoder) throws {
                    var values = encoder.container(keyedBy: StringCodingKey.self)
                    try values.encode(context, forKey: "context")
                    try values.encodeIfPresent(appID, forKey: "app_id")
                }
            }

            public init(isStrict: Bool? = nil, contexts: [String]? = nil, checks: [Check]? = nil) {
                self.isStrict = isStrict
                self.contexts = contexts
                self.checks = checks
            }

            public func encode(to encoder: Encoder) throws {
                var values = encoder.container(keyedBy: StringCodingKey.self)
                try values.encodeIfPresent(isStrict, forKey: "strict")
                try values.encodeIfPresent(contexts, forKey: "contexts")
                try values.encodeIfPresent(checks, forKey: "checks")
            }
        }

        /// Remove status check protection
        ///
        /// Protected branches are available in public repositories with GitHub Free and GitHub Free for organizations, and in public and private repositories with GitHub Pro, GitHub Team, GitHub Enterprise Cloud, and GitHub Enterprise Server. For more information, see [GitHub's products](https://help.github.com/github/getting-started-with-github/githubs-products) in the GitHub Help documentation.
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/repos#remove-status-check-protection)
        public var delete: Request<Void> {
            Request(method: "DELETE", url: path, id: "repos/remove-status-check-protection")
        }
    }
}
