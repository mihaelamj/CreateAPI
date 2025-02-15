// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.Repos.WithOwner.WithRepo.Traffic.Popular {
    public var paths: Paths {
        Paths(path: path + "/paths")
    }

    public struct Paths {
        /// Path: `/repos/{owner}/{repo}/traffic/popular/paths`
        public let path: String

        /// Get top referral paths
        ///
        /// Get the top 10 popular contents over the last 14 days.
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/repos#get-top-referral-paths)
        public var get: Request<[OctoKit.ContentTraffic]> {
            Request(method: "GET", url: path, id: "repos/get-top-paths")
        }
    }
}
