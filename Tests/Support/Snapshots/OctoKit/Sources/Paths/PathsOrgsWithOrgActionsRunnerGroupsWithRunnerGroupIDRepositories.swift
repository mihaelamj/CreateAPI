// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.Orgs.WithOrg.Actions.RunnerGroups.WithRunnerGroupID {
    public var repositories: Repositories {
        Repositories(path: path + "/repositories")
    }

    public struct Repositories {
        /// Path: `/orgs/{org}/actions/runner-groups/{runner_group_id}/repositories`
        public let path: String

        /// List repository access to a self-hosted runner group in an organization
        ///
        /// The self-hosted runner groups REST API is available with GitHub Enterprise Cloud and GitHub Enterprise Server. For more information, see "[GitHub's products](https://docs.github.com/github/getting-started-with-github/githubs-products)."
        /// 
        /// Lists the repositories with access to a self-hosted runner group configured in an organization.
        /// 
        /// You must authenticate using an access token with the `admin:org` scope to use this endpoint.
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/actions#list-repository-access-to-a-self-hosted-runner-group-in-an-organization)
        public func get(page: Int? = nil, perPage: Int? = nil) -> Request<GetResponse> {
            Request(method: "GET", url: path, query: makeGetQuery(page, perPage), id: "actions/list-repo-access-to-self-hosted-runner-group-in-org")
        }

        public struct GetResponse: Decodable {
            public var totalCount: Double
            public var repositories: [OctoKit.MinimalRepository]

            public init(totalCount: Double, repositories: [OctoKit.MinimalRepository]) {
                self.totalCount = totalCount
                self.repositories = repositories
            }

            public init(from decoder: Decoder) throws {
                let values = try decoder.container(keyedBy: StringCodingKey.self)
                self.totalCount = try values.decode(Double.self, forKey: "total_count")
                self.repositories = try values.decode([OctoKit.MinimalRepository].self, forKey: "repositories")
            }
        }

        private func makeGetQuery(_ page: Int?, _ perPage: Int?) -> [(String, String?)] {
            let encoder = URLQueryEncoder()
            encoder.encode(page, forKey: "page")
            encoder.encode(perPage, forKey: "per_page")
            return encoder.items
        }

        /// Set repository access for a self-hosted runner group in an organization
        ///
        /// The self-hosted runner groups REST API is available with GitHub Enterprise Cloud. For more information, see "[GitHub's products](https://docs.github.com/github/getting-started-with-github/githubs-products)."
        /// 
        /// Replaces the list of repositories that have access to a self-hosted runner group configured in an organization.
        /// 
        /// You must authenticate using an access token with the `admin:org` scope to use this endpoint.
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/actions#set-repository-access-to-a-self-hosted-runner-group-in-an-organization)
        public func put(selectedRepositoryIDs: [Int]) -> Request<Void> {
            Request(method: "PUT", url: path, body: ["selected_repository_ids": selectedRepositoryIDs], id: "actions/set-repo-access-to-self-hosted-runner-group-in-org")
        }
    }
}
