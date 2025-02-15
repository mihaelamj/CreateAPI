// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.Repos.WithOwner.WithRepo.SecretScanning.Alerts.WithAlertNumber {
    public var locations: Locations {
        Locations(path: path + "/locations")
    }

    public struct Locations {
        /// Path: `/repos/{owner}/{repo}/secret-scanning/alerts/{alert_number}/locations`
        public let path: String

        /// List locations for a secret scanning alert
        ///
        /// Lists all locations for a given secret scanning alert for a private repository. To use this endpoint, you must be an administrator for the repository or organization, and you must use an access token with the `repo` scope or `security_events` scope.
        /// 
        /// GitHub Apps must have the `secret_scanning_alerts` read permission to use this endpoint.
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/secret-scanning#list-locations-for-a-secret-scanning-alert)
        public func get(page: Int? = nil, perPage: Int? = nil) -> Request<[OctoKit.SecretScanningLocation]> {
            Request(method: "GET", url: path, query: makeGetQuery(page, perPage), id: "secret-scanning/list-locations-for-alert")
        }

        public enum GetResponseHeaders {
            public static let link = HTTPHeader<String>(field: "Link")
        }

        private func makeGetQuery(_ page: Int?, _ perPage: Int?) -> [(String, String?)] {
            let encoder = URLQueryEncoder()
            encoder.encode(page, forKey: "page")
            encoder.encode(perPage, forKey: "per_page")
            return encoder.items
        }
    }
}
