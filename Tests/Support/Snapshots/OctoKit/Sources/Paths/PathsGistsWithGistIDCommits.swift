// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.Gists.WithGistID {
    public var commits: Commits {
        Commits(path: path + "/commits")
    }

    public struct Commits {
        /// Path: `/gists/{gist_id}/commits`
        public let path: String

        /// List gist commits
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/gists#list-gist-commits)
        public func get(perPage: Int? = nil, page: Int? = nil) -> Request<[OctoKit.GistCommit]> {
            Request(method: "GET", url: path, query: makeGetQuery(perPage, page), id: "gists/list-commits")
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
