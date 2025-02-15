// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.Teams.WithTeamID.Repos.WithOwner {
    public func repo(_ repo: String) -> WithRepo {
        WithRepo(path: "\(path)/\(repo)")
    }

    public struct WithRepo {
        /// Path: `/teams/{team_id}/repos/{owner}/{repo}`
        public let path: String

        /// Check team permissions for a repository (Legacy)
        ///
        /// **Note**: Repositories inherited through a parent team will also be checked.
        /// 
        /// **Deprecation Notice:** This endpoint route is deprecated and will be removed from the Teams API. We recommend migrating your existing code to use the new [Check team permissions for a repository](https://docs.github.com/rest/reference/teams#check-team-permissions-for-a-repository) endpoint.
        /// 
        /// You can also get information about the specified repository, including what permissions the team grants on it, by passing the following custom [media type](https://docs.github.com/rest/overview/media-types/) via the `Accept` header:
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/teams/#check-team-permissions-for-a-repository-legacy)
        @available(*, deprecated, message: "Deprecated")
        public var get: Request<OctoKit.TeamRepository> {
            Request(method: "GET", url: path, id: "teams/check-permissions-for-repo-legacy")
        }

        /// Add or update team repository permissions (Legacy)
        ///
        /// **Deprecation Notice:** This endpoint route is deprecated and will be removed from the Teams API. We recommend migrating your existing code to use the new "[Add or update team repository permissions](https://docs.github.com/rest/reference/teams#add-or-update-team-repository-permissions)" endpoint.
        /// 
        /// To add a repository to a team or update the team's permission on a repository, the authenticated user must have admin access to the repository, and must be able to see the team. The repository must be owned by the organization, or a direct fork of a repository owned by the organization. You will get a `422 Unprocessable Entity` status if you attempt to add a repository to a team that is not owned by the organization.
        /// 
        /// Note that, if you choose not to pass any parameters, you'll need to set `Content-Length` to zero when calling out to this endpoint. For more information, see "[HTTP verbs](https://docs.github.com/rest/overview/resources-in-the-rest-api#http-verbs)."
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/teams/#add-or-update-team-repository-permissions-legacy)
        @available(*, deprecated, message: "Deprecated")
        public func put(permission: PutRequest.Permission? = nil) -> Request<Void> {
            Request(method: "PUT", url: path, body: PutRequest(permission: permission), id: "teams/add-or-update-repo-permissions-legacy")
        }

        public struct PutRequest: Encodable {
            /// The permission to grant the team on this repository. Can be one of:  
            /// \* `pull` - team members can pull, but not push to or administer this repository.  
            /// \* `push` - team members can pull and push, but not administer this repository.  
            /// \* `admin` - team members can pull, push and administer this repository.  
            ///   
            /// If no permission is specified, the team's `permission` attribute will be used to determine what permission to grant the team on this repository.
            public var permission: Permission?

            /// The permission to grant the team on this repository. Can be one of:  
            /// \* `pull` - team members can pull, but not push to or administer this repository.  
            /// \* `push` - team members can pull and push, but not administer this repository.  
            /// \* `admin` - team members can pull, push and administer this repository.  
            ///   
            /// If no permission is specified, the team's `permission` attribute will be used to determine what permission to grant the team on this repository.
            public enum Permission: String, Codable, CaseIterable {
                case pull
                case push
                case admin
            }

            public init(permission: Permission? = nil) {
                self.permission = permission
            }

            public func encode(to encoder: Encoder) throws {
                var values = encoder.container(keyedBy: StringCodingKey.self)
                try values.encodeIfPresent(permission, forKey: "permission")
            }
        }

        /// Remove a repository from a team (Legacy)
        ///
        /// **Deprecation Notice:** This endpoint route is deprecated and will be removed from the Teams API. We recommend migrating your existing code to use the new [Remove a repository from a team](https://docs.github.com/rest/reference/teams#remove-a-repository-from-a-team) endpoint.
        /// 
        /// If the authenticated user is an organization owner or a team maintainer, they can remove any repositories from the team. To remove a repository from a team as an organization member, the authenticated user must have admin access to the repository and must be able to see the team. NOTE: This does not delete the repository, it just removes it from the team.
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/teams/#remove-a-repository-from-a-team-legacy)
        @available(*, deprecated, message: "Deprecated")
        public var delete: Request<Void> {
            Request(method: "DELETE", url: path, id: "teams/remove-repo-legacy")
        }
    }
}
