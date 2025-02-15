// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.Orgs.WithOrg.Actions.RunnerGroups {
    public func runnerGroupID(_ runnerGroupID: Int) -> WithRunnerGroupID {
        WithRunnerGroupID(path: "\(path)/\(runnerGroupID)")
    }

    public struct WithRunnerGroupID {
        /// Path: `/orgs/{org}/actions/runner-groups/{runner_group_id}`
        public let path: String

        /// Get a self-hosted runner group for an organization
        ///
        /// The self-hosted runner groups REST API is available with GitHub Enterprise Cloud. For more information, see "[GitHub's products](https://docs.github.com/github/getting-started-with-github/githubs-products)."
        /// 
        /// Gets a specific self-hosted runner group for an organization.
        /// 
        /// You must authenticate using an access token with the `admin:org` scope to use this endpoint.
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/actions#get-a-self-hosted-runner-group-for-an-organization)
        public var get: Request<OctoKit.RunnerGroupsOrg> {
            Request(method: "GET", url: path, id: "actions/get-self-hosted-runner-group-for-org")
        }

        /// Update a self-hosted runner group for an organization
        ///
        /// The self-hosted runner groups REST API is available with GitHub Enterprise Cloud. For more information, see "[GitHub's products](https://docs.github.com/github/getting-started-with-github/githubs-products)."
        /// 
        /// Updates the `name` and `visibility` of a self-hosted runner group in an organization.
        /// 
        /// You must authenticate using an access token with the `admin:org` scope to use this endpoint.
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/actions#update-a-self-hosted-runner-group-for-an-organization)
        public func patch(_ body: PatchRequest) -> Request<OctoKit.RunnerGroupsOrg> {
            Request(method: "PATCH", url: path, body: body, id: "actions/update-self-hosted-runner-group-for-org")
        }

        public struct PatchRequest: Encodable {
            /// Name of the runner group.
            public var name: String
            /// Visibility of a runner group. You can select all repositories, select individual repositories, or all private repositories. Can be one of: `all`, `selected`, or `private`.
            public var visibility: Visibility?
            /// Whether the runner group can be used by `public` repositories.
            public var allowsPublicRepositories: Bool

            /// Visibility of a runner group. You can select all repositories, select individual repositories, or all private repositories. Can be one of: `all`, `selected`, or `private`.
            public enum Visibility: String, Codable, CaseIterable {
                case selected
                case all
                case `private`
            }

            public init(name: String, visibility: Visibility? = nil, allowsPublicRepositories: Bool? = nil) {
                self.name = name
                self.visibility = visibility
                self.allowsPublicRepositories = allowsPublicRepositories ?? false
            }

            public func encode(to encoder: Encoder) throws {
                var values = encoder.container(keyedBy: StringCodingKey.self)
                try values.encode(name, forKey: "name")
                try values.encodeIfPresent(visibility, forKey: "visibility")
                try values.encodeIfPresent(allowsPublicRepositories, forKey: "allows_public_repositories")
            }
        }

        /// Delete a self-hosted runner group from an organization
        ///
        /// The self-hosted runner groups REST API is available with GitHub Enterprise Cloud. For more information, see "[GitHub's products](https://docs.github.com/github/getting-started-with-github/githubs-products)."
        /// 
        /// Deletes a self-hosted runner group for an organization.
        /// 
        /// You must authenticate using an access token with the `admin:org` scope to use this endpoint.
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/actions#delete-a-self-hosted-runner-group-from-an-organization)
        public var delete: Request<Void> {
            Request(method: "DELETE", url: path, id: "actions/delete-self-hosted-runner-group-from-org")
        }
    }
}
