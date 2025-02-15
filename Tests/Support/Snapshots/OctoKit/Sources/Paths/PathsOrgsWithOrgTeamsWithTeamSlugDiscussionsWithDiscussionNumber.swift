// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.Orgs.WithOrg.Teams.WithTeamSlug.Discussions {
    public func discussionNumber(_ discussionNumber: Int) -> WithDiscussionNumber {
        WithDiscussionNumber(path: "\(path)/\(discussionNumber)")
    }

    public struct WithDiscussionNumber {
        /// Path: `/orgs/{org}/teams/{team_slug}/discussions/{discussion_number}`
        public let path: String

        /// Get a discussion
        ///
        /// Get a specific discussion on a team's page. OAuth access tokens require the `read:discussion` [scope](https://docs.github.com/apps/building-oauth-apps/understanding-scopes-for-oauth-apps/).
        /// 
        /// **Note:** You can also specify a team by `org_id` and `team_id` using the route `GET /organizations/{org_id}/team/{team_id}/discussions/{discussion_number}`.
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/teams#get-a-discussion)
        public var get: Request<OctoKit.TeamDiscussion> {
            Request(method: "GET", url: path, id: "teams/get-discussion-in-org")
        }

        /// Update a discussion
        ///
        /// Edits the title and body text of a discussion post. Only the parameters you provide are updated. OAuth access tokens require the `write:discussion` [scope](https://docs.github.com/apps/building-oauth-apps/understanding-scopes-for-oauth-apps/).
        /// 
        /// **Note:** You can also specify a team by `org_id` and `team_id` using the route `PATCH /organizations/{org_id}/team/{team_id}/discussions/{discussion_number}`.
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/teams#update-a-discussion)
        public func patch(_ body: PatchRequest? = nil) -> Request<OctoKit.TeamDiscussion> {
            Request(method: "PATCH", url: path, body: body, id: "teams/update-discussion-in-org")
        }

        public struct PatchRequest: Encodable {
            /// The discussion post's title.
            public var title: String?
            /// The discussion post's body text.
            public var body: String?

            public init(title: String? = nil, body: String? = nil) {
                self.title = title
                self.body = body
            }

            public func encode(to encoder: Encoder) throws {
                var values = encoder.container(keyedBy: StringCodingKey.self)
                try values.encodeIfPresent(title, forKey: "title")
                try values.encodeIfPresent(body, forKey: "body")
            }
        }

        /// Delete a discussion
        ///
        /// Delete a discussion from a team's page. OAuth access tokens require the `write:discussion` [scope](https://docs.github.com/apps/building-oauth-apps/understanding-scopes-for-oauth-apps/).
        /// 
        /// **Note:** You can also specify a team by `org_id` and `team_id` using the route `DELETE /organizations/{org_id}/team/{team_id}/discussions/{discussion_number}`.
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/teams#delete-a-discussion)
        public var delete: Request<Void> {
            Request(method: "DELETE", url: path, id: "teams/delete-discussion-in-org")
        }
    }
}
