// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.Repos.WithOwner.WithRepo {
    public var autolinks: Autolinks {
        Autolinks(path: path + "/autolinks")
    }

    public struct Autolinks {
        /// Path: `/repos/{owner}/{repo}/autolinks`
        public let path: String

        /// List all autolinks of a repository
        ///
        /// This returns a list of autolinks configured for the given repository.
        /// 
        /// Information about autolinks are only available to repository administrators.
        ///
        /// [API method documentation](https://docs.github.com/v3/repos#list-autolinks)
        public func get(page: Int? = nil) -> Request<[OctoKit.Autolink]> {
            Request(method: "GET", url: path, query: makeGetQuery(page), id: "repos/list-autolinks")
        }

        private func makeGetQuery(_ page: Int?) -> [(String, String?)] {
            let encoder = URLQueryEncoder()
            encoder.encode(page, forKey: "page")
            return encoder.items
        }

        /// Create an autolink reference for a repository
        ///
        /// Users with admin access to the repository can create an autolink.
        ///
        /// [API method documentation](https://docs.github.com/v3/repos#create-an-autolink)
        public func post(_ body: PostRequest) -> Request<OctoKit.Autolink> {
            Request(method: "POST", url: path, body: body, id: "repos/create-autolink")
        }

        public enum PostResponseHeaders {
            public static let location = HTTPHeader<String>(field: "Location")
        }

        public struct PostRequest: Encodable {
            /// The prefix appended by a number will generate a link any time it is found in an issue, pull request, or commit.
            public var keyPrefix: String
            /// The URL must contain <num> for the reference number.
            public var urlTemplate: String

            public init(keyPrefix: String, urlTemplate: String) {
                self.keyPrefix = keyPrefix
                self.urlTemplate = urlTemplate
            }

            public func encode(to encoder: Encoder) throws {
                var values = encoder.container(keyedBy: StringCodingKey.self)
                try values.encode(keyPrefix, forKey: "key_prefix")
                try values.encode(urlTemplate, forKey: "url_template")
            }
        }
    }
}
