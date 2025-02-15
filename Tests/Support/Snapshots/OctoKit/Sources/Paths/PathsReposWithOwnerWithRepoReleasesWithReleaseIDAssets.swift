// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.Repos.WithOwner.WithRepo.Releases.WithReleaseID {
    public var assets: Assets {
        Assets(path: path + "/assets")
    }

    public struct Assets {
        /// Path: `/repos/{owner}/{repo}/releases/{release_id}/assets`
        public let path: String

        /// List release assets
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/repos#list-release-assets)
        public func get(perPage: Int? = nil, page: Int? = nil) -> Request<[OctoKit.ReleaseAsset]> {
            Request(method: "GET", url: path, query: makeGetQuery(perPage, page), id: "repos/list-release-assets")
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

        /// Upload a release asset
        ///
        /// This endpoint makes use of [a Hypermedia relation](https://docs.github.com/rest/overview/resources-in-the-rest-api#hypermedia) to determine which URL to access. The endpoint you call to upload release assets is specific to your release. Use the `upload_url` returned in
        /// the response of the [Create a release endpoint](https://docs.github.com/rest/reference/repos#create-a-release) to upload a release asset.
        /// 
        /// You need to use an HTTP client which supports [SNI](http://en.wikipedia.org/wiki/Server_Name_Indication) to make calls to this endpoint.
        /// 
        /// Most libraries will set the required `Content-Length` header automatically. Use the required `Content-Type` header to provide the media type of the asset. For a list of media types, see [Media Types](https://www.iana.org/assignments/media-types/media-types.xhtml). For example: 
        /// 
        /// `application/zip`
        /// 
        /// GitHub expects the asset data in its raw binary form, rather than JSON. You will send the raw binary content of the asset as the request body. Everything else about the endpoint is the same as the rest of the API. For example,
        /// you'll still need to pass your authentication to be able to upload an asset.
        /// 
        /// When an upstream failure occurs, you will receive a `502 Bad Gateway` status. This may leave an empty asset with a state of `starter`. It can be safely deleted.
        /// 
        /// **Notes:**
        /// *   GitHub renames asset filenames that have special characters, non-alphanumeric characters, and leading or trailing periods. The "[List assets for a release](https://docs.github.com/rest/reference/repos#list-assets-for-a-release)"
        /// endpoint lists the renamed filenames. For more information and help, contact [GitHub Support](https://support.github.com/contact?tags=dotcom-rest-api).
        /// *   If you upload an asset with the same filename as another uploaded asset, you'll receive an error and must delete the old file before you can re-upload the new asset.
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/repos#upload-a-release-asset)
        public func post(name: String, label: String? = nil, _ body: String? = nil) -> Request<OctoKit.ReleaseAsset> {
            Request(method: "POST", url: path, query: makePostQuery(name, label), body: body, id: "repos/upload-release-asset")
        }

        private func makePostQuery(_ name: String, _ label: String?) -> [(String, String?)] {
            let encoder = URLQueryEncoder()
            encoder.encode(name, forKey: "name")
            encoder.encode(label, forKey: "label")
            return encoder.items
        }
    }
}
