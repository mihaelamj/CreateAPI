// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.Repos.WithOwner.WithRepo.Invitations {
    public func invitationID(_ invitationID: Int) -> WithInvitationID {
        WithInvitationID(path: "\(path)/\(invitationID)")
    }

    public struct WithInvitationID {
        /// Path: `/repos/{owner}/{repo}/invitations/{invitation_id}`
        public let path: String

        /// Update a repository invitation
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/repos#update-a-repository-invitation)
        public func patch(permissions: PatchRequest.Permissions? = nil) -> Request<OctoKit.RepositoryInvitation> {
            Request(method: "PATCH", url: path, body: PatchRequest(permissions: permissions), id: "repos/update-invitation")
        }

        public struct PatchRequest: Encodable {
            /// The permissions that the associated user will have on the repository. Valid values are `read`, `write`, `maintain`, `triage`, and `admin`.
            public var permissions: Permissions?

            /// The permissions that the associated user will have on the repository. Valid values are `read`, `write`, `maintain`, `triage`, and `admin`.
            public enum Permissions: String, Codable, CaseIterable {
                case read
                case write
                case maintain
                case triage
                case admin
            }

            public init(permissions: Permissions? = nil) {
                self.permissions = permissions
            }

            public func encode(to encoder: Encoder) throws {
                var values = encoder.container(keyedBy: StringCodingKey.self)
                try values.encodeIfPresent(permissions, forKey: "permissions")
            }
        }

        /// Delete a repository invitation
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/repos#delete-a-repository-invitation)
        public var delete: Request<Void> {
            Request(method: "DELETE", url: path, id: "repos/delete-invitation")
        }
    }
}
