// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.Enterprises.WithEnterprise.Actions.Runners.WithRunnerID {
    public var labels: Labels {
        Labels(path: path + "/labels")
    }

    public struct Labels {
        /// Path: `/enterprises/{enterprise}/actions/runners/{runner_id}/labels`
        public let path: String

        /// List labels for a self-hosted runner for an enterprise
        ///
        /// Lists all labels for a self-hosted runner configured in an enterprise.
        /// 
        /// You must authenticate using an access token with the `manage_runners:enterprise` scope to use this endpoint.
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/enterprise-admin#list-labels-for-a-self-hosted-runner-for-an-enterprise)
        public var get: Request<GetResponse> {
            Request(method: "GET", url: path, id: "enterprise-admin/list-labels-for-self-hosted-runner-for-enterprise")
        }

        public struct GetResponse: Decodable {
            public var totalCount: Int
            public var labels: [OctoKit.RunnerLabel]

            public init(totalCount: Int, labels: [OctoKit.RunnerLabel]) {
                self.totalCount = totalCount
                self.labels = labels
            }

            public init(from decoder: Decoder) throws {
                let values = try decoder.container(keyedBy: StringCodingKey.self)
                self.totalCount = try values.decode(Int.self, forKey: "total_count")
                self.labels = try values.decode([OctoKit.RunnerLabel].self, forKey: "labels")
            }
        }

        /// Add custom labels to a self-hosted runner for an enterprise
        ///
        /// Add custom labels to a self-hosted runner configured in an enterprise.
        /// 
        /// You must authenticate using an access token with the `manage_runners:enterprise` scope to use this endpoint.
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/enterprise-admin#add-custom-labels-to-a-self-hosted-runner-for-an-enterprise)
        public func post(labels: [String]) -> Request<PostResponse> {
            Request(method: "POST", url: path, body: ["labels": labels], id: "enterprise-admin/add-custom-labels-to-self-hosted-runner-for-enterprise")
        }

        public struct PostResponse: Decodable {
            public var totalCount: Int
            public var labels: [OctoKit.RunnerLabel]

            public init(totalCount: Int, labels: [OctoKit.RunnerLabel]) {
                self.totalCount = totalCount
                self.labels = labels
            }

            public init(from decoder: Decoder) throws {
                let values = try decoder.container(keyedBy: StringCodingKey.self)
                self.totalCount = try values.decode(Int.self, forKey: "total_count")
                self.labels = try values.decode([OctoKit.RunnerLabel].self, forKey: "labels")
            }
        }

        /// Set custom labels for a self-hosted runner for an enterprise
        ///
        /// Remove all previous custom labels and set the new custom labels for a specific
        /// self-hosted runner configured in an enterprise.
        /// 
        /// You must authenticate using an access token with the `manage_runners:enterprise` scope to use this endpoint.
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/enterprise-admin#set-custom-labels-for-a-self-hosted-runner-for-an-enterprise)
        public func put(labels: [String]) -> Request<PutResponse> {
            Request(method: "PUT", url: path, body: ["labels": labels], id: "enterprise-admin/set-custom-labels-for-self-hosted-runner-for-enterprise")
        }

        public struct PutResponse: Decodable {
            public var totalCount: Int
            public var labels: [OctoKit.RunnerLabel]

            public init(totalCount: Int, labels: [OctoKit.RunnerLabel]) {
                self.totalCount = totalCount
                self.labels = labels
            }

            public init(from decoder: Decoder) throws {
                let values = try decoder.container(keyedBy: StringCodingKey.self)
                self.totalCount = try values.decode(Int.self, forKey: "total_count")
                self.labels = try values.decode([OctoKit.RunnerLabel].self, forKey: "labels")
            }
        }

        /// Remove all custom labels from a self-hosted runner for an enterprise
        ///
        /// Remove all custom labels from a self-hosted runner configured in an
        /// enterprise. Returns the remaining read-only labels from the runner.
        /// 
        /// You must authenticate using an access token with the `manage_runners:enterprise` scope to use this endpoint.
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/enterprise-admin#remove-all-custom-labels-from-a-self-hosted-runner-for-an-enterprise)
        public var delete: Request<DeleteResponse> {
            Request(method: "DELETE", url: path, id: "enterprise-admin/remove-all-custom-labels-from-self-hosted-runner-for-enterprise")
        }

        public struct DeleteResponse: Decodable {
            public var totalCount: Int
            public var labels: [OctoKit.RunnerLabel]

            public init(totalCount: Int, labels: [OctoKit.RunnerLabel]) {
                self.totalCount = totalCount
                self.labels = labels
            }

            public init(from decoder: Decoder) throws {
                let values = try decoder.container(keyedBy: StringCodingKey.self)
                self.totalCount = try values.decode(Int.self, forKey: "total_count")
                self.labels = try values.decode([OctoKit.RunnerLabel].self, forKey: "labels")
            }
        }
    }
}
