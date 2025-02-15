// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.Teams.WithTeamID.Memberships {
    public func username(_ username: String) -> WithUsername {
        WithUsername(path: "\(path)/\(username)")
    }

    public struct WithUsername {
        /// Path: `/teams/{team_id}/memberships/{username}`
        public let path: String

        /// Get team membership for a user (Legacy)
        ///
        /// **Deprecation Notice:** This endpoint route is deprecated and will be removed from the Teams API. We recommend migrating your existing code to use the new [Get team membership for a user](https://docs.github.com/rest/reference/teams#get-team-membership-for-a-user) endpoint.
        /// 
        /// Team members will include the members of child teams.
        /// 
        /// To get a user's membership with a team, the team must be visible to the authenticated user.
        /// 
        /// **Note:**
        /// The response contains the `state` of the membership and the member's `role`.
        /// 
        /// The `role` for organization owners is set to `maintainer`. For more information about `maintainer` roles, see [Create a team](https://docs.github.com/rest/reference/teams#create-a-team).
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/teams#get-team-membership-for-a-user-legacy)
        @available(*, deprecated, message: "Deprecated")
        public var get: Request<OctoKit.TeamMembership> {
            Request(method: "GET", url: path, id: "teams/get-membership-for-user-legacy")
        }

        /// Add or update team membership for a user (Legacy)
        ///
        /// **Deprecation Notice:** This endpoint route is deprecated and will be removed from the Teams API. We recommend migrating your existing code to use the new [Add or update team membership for a user](https://docs.github.com/rest/reference/teams#add-or-update-team-membership-for-a-user) endpoint.
        /// 
        /// Team synchronization is available for organizations using GitHub Enterprise Cloud. For more information, see [GitHub's products](https://help.github.com/github/getting-started-with-github/githubs-products) in the GitHub Help documentation.
        /// 
        /// If the user is already a member of the team's organization, this endpoint will add the user to the team. To add a membership between an organization member and a team, the authenticated user must be an organization owner or a team maintainer.
        /// 
        /// **Note:** When you have team synchronization set up for a team with your organization's identity provider (IdP), you will see an error if you attempt to use the API for making changes to the team's membership. If you have access to manage group membership in your IdP, you can manage GitHub team membership through your identity provider, which automatically adds and removes team members in an organization. For more information, see "[Synchronizing teams between your identity provider and GitHub](https://help.github.com/articles/synchronizing-teams-between-your-identity-provider-and-github/)."
        /// 
        /// If the user is unaffiliated with the team's organization, this endpoint will send an invitation to the user via email. This newly-created membership will be in the "pending" state until the user accepts the invitation, at which point the membership will transition to the "active" state and the user will be added as a member of the team. To add a membership between an unaffiliated user and a team, the authenticated user must be an organization owner.
        /// 
        /// If the user is already a member of the team, this endpoint will update the role of the team member's role. To update the membership of a team member, the authenticated user must be an organization owner or a team maintainer.
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/teams#add-or-update-team-membership-for-a-user-legacy)
        @available(*, deprecated, message: "Deprecated")
        public func put(role: PutRequest.Role? = nil) -> Request<OctoKit.TeamMembership> {
            Request(method: "PUT", url: path, body: PutRequest(role: role), id: "teams/add-or-update-membership-for-user-legacy")
        }

        public struct PutRequest: Encodable {
            /// The role that this user should have in the team. Can be one of:  
            /// \* `member` - a normal member of the team.  
            /// \* `maintainer` - a team maintainer. Able to add/remove other team members, promote other team members to team maintainer, and edit the team's name and description.
            public var role: Role?

            /// The role that this user should have in the team. Can be one of:  
            /// \* `member` - a normal member of the team.  
            /// \* `maintainer` - a team maintainer. Able to add/remove other team members, promote other team members to team maintainer, and edit the team's name and description.
            public enum Role: String, Codable, CaseIterable {
                case member
                case maintainer
            }

            public init(role: Role? = nil) {
                self.role = role
            }

            public func encode(to encoder: Encoder) throws {
                var values = encoder.container(keyedBy: StringCodingKey.self)
                try values.encodeIfPresent(role, forKey: "role")
            }
        }

        /// Remove team membership for a user (Legacy)
        ///
        /// **Deprecation Notice:** This endpoint route is deprecated and will be removed from the Teams API. We recommend migrating your existing code to use the new [Remove team membership for a user](https://docs.github.com/rest/reference/teams#remove-team-membership-for-a-user) endpoint.
        /// 
        /// Team synchronization is available for organizations using GitHub Enterprise Cloud. For more information, see [GitHub's products](https://help.github.com/github/getting-started-with-github/githubs-products) in the GitHub Help documentation.
        /// 
        /// To remove a membership between a user and a team, the authenticated user must have 'admin' permissions to the team or be an owner of the organization that the team is associated with. Removing team membership does not delete the user, it just removes their membership from the team.
        /// 
        /// **Note:** When you have team synchronization set up for a team with your organization's identity provider (IdP), you will see an error if you attempt to use the API for making changes to the team's membership. If you have access to manage group membership in your IdP, you can manage GitHub team membership through your identity provider, which automatically adds and removes team members in an organization. For more information, see "[Synchronizing teams between your identity provider and GitHub](https://help.github.com/articles/synchronizing-teams-between-your-identity-provider-and-github/)."
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/teams#remove-team-membership-for-a-user-legacy)
        @available(*, deprecated, message: "Deprecated")
        public var delete: Request<Void> {
            Request(method: "DELETE", url: path, id: "teams/remove-membership-for-user-legacy")
        }
    }
}
