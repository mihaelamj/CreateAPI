// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.Gists.WithGistID {
    public var star: Star {
        Star(path: path + "/star")
    }

    public struct Star {
        /// Path: `/gists/{gist_id}/star`
        public let path: String

        /// Check if a gist is starred
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/gists#check-if-a-gist-is-starred)
        public var get: Request<Void> {
            Request(method: "GET", url: path, id: "gists/check-is-starred")
        }

        /// Star a gist
        ///
        /// Note that you'll need to set `Content-Length` to zero when calling out to this endpoint. For more information, see "[HTTP verbs](https://docs.github.com/rest/overview/resources-in-the-rest-api#http-verbs)."
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/gists#star-a-gist)
        public var put: Request<Void> {
            Request(method: "PUT", url: path, id: "gists/star")
        }

        /// Unstar a gist
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/gists#unstar-a-gist)
        public var delete: Request<Void> {
            Request(method: "DELETE", url: path, id: "gists/unstar")
        }
    }
}