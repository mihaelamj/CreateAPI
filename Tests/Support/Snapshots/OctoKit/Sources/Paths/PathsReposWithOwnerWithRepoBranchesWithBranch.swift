// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.Repos.WithOwner.WithRepo.Branches {
    public func branch(_ branch: String) -> WithBranch {
        WithBranch(path: "\(path)/\(branch)")
    }

    public struct WithBranch {
        /// Path: `/repos/{owner}/{repo}/branches/{branch}`
        public let path: String

        /// Get a branch
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/repos#get-a-branch)
        public var get: Request<OctoKit.BranchWithProtection> {
            Request(method: "GET", url: path, id: "repos/get-branch")
        }
    }
}
