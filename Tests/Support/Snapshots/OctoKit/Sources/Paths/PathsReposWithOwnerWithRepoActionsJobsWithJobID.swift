// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.Repos.WithOwner.WithRepo.Actions.Jobs {
    public func jobID(_ jobID: Int) -> WithJobID {
        WithJobID(path: "\(path)/\(jobID)")
    }

    public struct WithJobID {
        /// Path: `/repos/{owner}/{repo}/actions/jobs/{job_id}`
        public let path: String

        /// Get a job for a workflow run
        ///
        /// Gets a specific job in a workflow run. Anyone with read access to the repository can use this endpoint. If the repository is private you must use an access token with the `repo` scope. GitHub Apps must have the `actions:read` permission to use this endpoint.
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/actions#get-a-job-for-a-workflow-run)
        public var get: Request<OctoKit.Job> {
            Request(method: "GET", url: path, id: "actions/get-job-for-workflow-run")
        }
    }
}
