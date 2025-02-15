// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.Repos.WithOwner.WithRepo {
    public var checkRuns: CheckRuns {
        CheckRuns(path: path + "/check-runs")
    }

    public struct CheckRuns {
        /// Path: `/repos/{owner}/{repo}/check-runs`
        public let path: String

        /// Create a check run
        ///
        /// **Note:** The Checks API only looks for pushes in the repository where the check suite or check run were created. Pushes to a branch in a forked repository are not detected and return an empty `pull_requests` array.
        /// 
        /// Creates a new check run for a specific commit in a repository. Your GitHub App must have the `checks:write` permission to create check runs.
        /// 
        /// In a check suite, GitHub limits the number of check runs with the same name to 1000. Once these check runs exceed 1000, GitHub will start to automatically delete older check runs.
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/checks#create-a-check-run)
        public func post(_ body: PostRequest) -> Request<OctoKit.CheckRun> {
            Request(method: "POST", url: path, body: body, id: "checks/create")
        }

        public enum PostRequest: Encodable {
            case a(A)
            case b(B)

            public struct A: Encodable {
                public var status: AnyJSON
                public var conclusion: AnyJSON

                public init(status: AnyJSON, conclusion: AnyJSON) {
                    self.status = status
                    self.conclusion = conclusion
                }

                public func encode(to encoder: Encoder) throws {
                    var values = encoder.container(keyedBy: StringCodingKey.self)
                    try values.encode(status, forKey: "status")
                    try values.encode(conclusion, forKey: "conclusion")
                }
            }

            public struct B: Encodable {
                public var status: AnyJSON?

                public init(status: AnyJSON? = nil) {
                    self.status = status
                }

                public func encode(to encoder: Encoder) throws {
                    var values = encoder.container(keyedBy: StringCodingKey.self)
                    try values.encodeIfPresent(status, forKey: "status")
                }
            }

            public func encode(to encoder: Encoder) throws {
                var container = encoder.singleValueContainer()
                switch self {
                case .a(let value): try container.encode(value)
                case .b(let value): try container.encode(value)
                }
            }
        }
    }
}
