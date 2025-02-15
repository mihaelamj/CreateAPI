// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.Licenses {
    public func license(_ license: String) -> WithLicense {
        WithLicense(path: "\(path)/\(license)")
    }

    public struct WithLicense {
        /// Path: `/licenses/{license}`
        public let path: String

        /// Get a license
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/licenses#get-a-license)
        public var get: Request<OctoKit.License> {
            Request(method: "GET", url: path, id: "licenses/get")
        }
    }
}
