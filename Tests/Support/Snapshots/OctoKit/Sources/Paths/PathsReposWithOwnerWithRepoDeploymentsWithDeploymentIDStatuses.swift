// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.Repos.WithOwner.WithRepo.Deployments.WithDeploymentID {
    public var statuses: Statuses {
        Statuses(path: path + "/statuses")
    }

    public struct Statuses {
        /// Path: `/repos/{owner}/{repo}/deployments/{deployment_id}/statuses`
        public let path: String

        /// List deployment statuses
        ///
        /// Users with pull access can view deployment statuses for a deployment:
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/repos#list-deployment-statuses)
        public func get(perPage: Int? = nil, page: Int? = nil) -> Request<[OctoKit.DeploymentStatus]> {
            Request(method: "GET", url: path, query: makeGetQuery(perPage, page), id: "repos/list-deployment-statuses")
        }

        public enum GetResponseHeaders {
            public static let link = HTTPHeader<String>(field: "Link")
        }

        private func makeGetQuery(_ perPage: Int?, _ page: Int?) -> [(String, String?)] {
            let encoder = URLQueryEncoder()
            encoder.encode(perPage, forKey: "per_page")
            encoder.encode(page, forKey: "page")
            return encoder.items
        }

        /// Create a deployment status
        ///
        /// Users with `push` access can create deployment statuses for a given deployment.
        /// 
        /// GitHub Apps require `read & write` access to "Deployments" and `read-only` access to "Repo contents" (for private repos). OAuth Apps require the `repo_deployment` scope.
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/repos#create-a-deployment-status)
        public func post(_ body: PostRequest) -> Request<OctoKit.DeploymentStatus> {
            Request(method: "POST", url: path, body: body, id: "repos/create-deployment-status")
        }

        public enum PostResponseHeaders {
            public static let location = HTTPHeader<String>(field: "Location")
        }

        public struct PostRequest: Encodable {
            /// The state of the status. Can be one of `error`, `failure`, `inactive`, `in_progress`, `queued`, `pending`, or `success`. When you set a transient deployment to `inactive`, the deployment will be shown as `destroyed` in GitHub.
            public var state: State
            /// The target URL to associate with this status. This URL should contain output to keep the user updated while the task is running or serve as historical information for what happened in the deployment. **Note:** It's recommended to use the `log_url` parameter, which replaces `target_url`.
            public var targetURL: String?
            /// The full URL of the deployment's output. This parameter replaces `target_url`. We will continue to accept `target_url` to support legacy uses, but we recommend replacing `target_url` with `log_url`. Setting `log_url` will automatically set `target_url` to the same value. Default: `""`
            public var logURL: String?
            /// A short description of the status. The maximum description length is 140 characters.
            public var description: String?
            /// Name for the target deployment environment, which can be changed when setting a deploy status. For example, `production`, `staging`, or `qa`.
            public var environment: Environment?
            /// Sets the URL for accessing your environment. Default: `""`
            public var environmentURL: String?
            /// Adds a new `inactive` status to all prior non-transient, non-production environment deployments with the same repository and `environment` name as the created status's deployment. An `inactive` status is only added to deployments that had a `success` state. Default: `true`
            public var isAutoInactive: Bool?

            /// The state of the status. Can be one of `error`, `failure`, `inactive`, `in_progress`, `queued`, `pending`, or `success`. When you set a transient deployment to `inactive`, the deployment will be shown as `destroyed` in GitHub.
            public enum State: String, Codable, CaseIterable {
                case error
                case failure
                case inactive
                case inProgress = "in_progress"
                case queued
                case pending
                case success
            }

            /// Name for the target deployment environment, which can be changed when setting a deploy status. For example, `production`, `staging`, or `qa`.
            public enum Environment: String, Codable, CaseIterable {
                case production
                case staging
                case qa
            }

            public init(state: State, targetURL: String? = nil, logURL: String? = nil, description: String? = nil, environment: Environment? = nil, environmentURL: String? = nil, isAutoInactive: Bool? = nil) {
                self.state = state
                self.targetURL = targetURL
                self.logURL = logURL
                self.description = description
                self.environment = environment
                self.environmentURL = environmentURL
                self.isAutoInactive = isAutoInactive
            }

            public func encode(to encoder: Encoder) throws {
                var values = encoder.container(keyedBy: StringCodingKey.self)
                try values.encode(state, forKey: "state")
                try values.encodeIfPresent(targetURL, forKey: "target_url")
                try values.encodeIfPresent(logURL, forKey: "log_url")
                try values.encodeIfPresent(description, forKey: "description")
                try values.encodeIfPresent(environment, forKey: "environment")
                try values.encodeIfPresent(environmentURL, forKey: "environment_url")
                try values.encodeIfPresent(isAutoInactive, forKey: "auto_inactive")
            }
        }
    }
}
