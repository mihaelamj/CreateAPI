// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.Repos.WithOwner.WithRepo.Actions.Runners {
    public var downloads: Downloads {
        Downloads(path: path + "/downloads")
    }

    public struct Downloads {
        /// Path: `/repos/{owner}/{repo}/actions/runners/downloads`
        public let path: String

        /// List runner applications for a repository
        ///
        /// Lists binaries for the runner application that you can download and run.
        /// 
        /// You must authenticate using an access token with the `repo` scope to use this endpoint.
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/actions#list-runner-applications-for-a-repository)
        public var get: Request<[OctoKit.RunnerApplication]> {
            Request(method: "GET", url: path, id: "actions/list-runner-applications-for-repo")
        }
    }
}
