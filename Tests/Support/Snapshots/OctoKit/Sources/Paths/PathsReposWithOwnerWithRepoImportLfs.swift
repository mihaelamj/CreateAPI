// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.Repos.WithOwner.WithRepo.Import {
    public var lfs: Lfs {
        Lfs(path: path + "/lfs")
    }

    public struct Lfs {
        /// Path: `/repos/{owner}/{repo}/import/lfs`
        public let path: String

        /// Update Git LFS preference
        ///
        /// You can import repositories from Subversion, Mercurial, and TFS that include files larger than 100MB. This ability is powered by [Git LFS](https://git-lfs.github.com). You can learn more about our LFS feature and working with large files [on our help site](https://help.github.com/articles/versioning-large-files/).
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/migrations#update-git-lfs-preference)
        public func patch(useLfs: PatchRequest.UseLfs) -> Request<OctoKit.Import> {
            Request(method: "PATCH", url: path, body: PatchRequest(useLfs: useLfs), id: "migrations/set-lfs-preference")
        }

        public struct PatchRequest: Encodable {
            /// Can be one of `opt_in` (large files will be stored using Git LFS) or `opt_out` (large files will be removed during the import).
            public var useLfs: UseLfs

            /// Can be one of `opt_in` (large files will be stored using Git LFS) or `opt_out` (large files will be removed during the import).
            public enum UseLfs: String, Codable, CaseIterable {
                case optIn = "opt_in"
                case optOut = "opt_out"
            }

            public init(useLfs: UseLfs) {
                self.useLfs = useLfs
            }

            public func encode(to encoder: Encoder) throws {
                var values = encoder.container(keyedBy: StringCodingKey.self)
                try values.encode(useLfs, forKey: "use_lfs")
            }
        }
    }
}
