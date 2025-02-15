// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.Repos.WithOwner.WithRepo.Import.Authors {
    public func authorID(_ authorID: Int) -> WithAuthorID {
        WithAuthorID(path: "\(path)/\(authorID)")
    }

    public struct WithAuthorID {
        /// Path: `/repos/{owner}/{repo}/import/authors/{author_id}`
        public let path: String

        /// Map a commit author
        ///
        /// Update an author's identity for the import. Your application can continue updating authors any time before you push new commits to the repository.
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/migrations#map-a-commit-author)
        public func patch(_ body: PatchRequest? = nil) -> Request<OctoKit.PorterAuthor> {
            Request(method: "PATCH", url: path, body: body, id: "migrations/map-commit-author")
        }

        public struct PatchRequest: Encodable {
            /// The new Git author email.
            public var email: String?
            /// The new Git author name.
            public var name: String?

            public init(email: String? = nil, name: String? = nil) {
                self.email = email
                self.name = name
            }

            public func encode(to encoder: Encoder) throws {
                var values = encoder.container(keyedBy: StringCodingKey.self)
                try values.encodeIfPresent(email, forKey: "email")
                try values.encodeIfPresent(name, forKey: "name")
            }
        }
    }
}
