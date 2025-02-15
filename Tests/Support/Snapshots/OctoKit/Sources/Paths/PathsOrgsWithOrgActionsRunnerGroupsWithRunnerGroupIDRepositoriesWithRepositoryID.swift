// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.Orgs.WithOrg.Actions.RunnerGroups.WithRunnerGroupID.Repositories {
    public func repositoryID(_ repositoryID: Int) -> WithRepositoryID {
        WithRepositoryID(path: "\(path)/\(repositoryID)")
    }

    public struct WithRepositoryID {
        /// Path: `/orgs/{org}/actions/runner-groups/{runner_group_id}/repositories/{repository_id}`
        public let path: String

        /// Add repository access to a self-hosted runner group in an organization
        ///
        /// The self-hosted runner groups REST API is available with GitHub Enterprise Cloud. For more information, see "[GitHub's products](https://docs.github.com/github/getting-started-with-github/githubs-products)."
        /// 
        /// 
        /// Adds a repository to the list of selected repositories that can access a self-hosted runner group. The runner group must have `visibility` set to `selected`. For more information, see "[Create a self-hosted runner group for an organization](#create-a-self-hosted-runner-group-for-an-organization)."
        /// 
        /// You must authenticate using an access token with the `admin:org`
        /// scope to use this endpoint.
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/actions#add-repository-acess-to-a-self-hosted-runner-group-in-an-organization)
        public var put: Request<Void> {
            Request(method: "PUT", url: path, id: "actions/add-repo-access-to-self-hosted-runner-group-in-org")
        }

        /// Remove repository access to a self-hosted runner group in an organization
        ///
        /// The self-hosted runner groups REST API is available with GitHub Enterprise Cloud. For more information, see "[GitHub's products](https://docs.github.com/github/getting-started-with-github/githubs-products)."
        /// 
        /// 
        /// Removes a repository from the list of selected repositories that can access a self-hosted runner group. The runner group must have `visibility` set to `selected`. For more information, see "[Create a self-hosted runner group for an organization](#create-a-self-hosted-runner-group-for-an-organization)."
        /// 
        /// You must authenticate using an access token with the `admin:org` scope to use this endpoint.
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/actions#remove-repository-access-to-a-self-hosted-runner-group-in-an-organization)
        public var delete: Request<Void> {
            Request(method: "DELETE", url: path, id: "actions/remove-repo-access-to-self-hosted-runner-group-in-org")
        }
    }
}
