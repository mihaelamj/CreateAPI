// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.Repos.WithOwner.WithRepo.Issues {
    public var events: Events {
        Events(path: path + "/events")
    }

    public struct Events {
        /// Path: `/repos/{owner}/{repo}/issues/events`
        public let path: String

        /// List issue events for a repository
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/issues#list-issue-events-for-a-repository)
        public func get(perPage: Int? = nil, page: Int? = nil) -> Request<[OctoKit.IssueEvent]> {
            Request(method: "GET", url: path, query: makeGetQuery(perPage, page), id: "issues/list-events-for-repo")
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
    }
}
