// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.Orgs.WithOrg {
    public var externalGroups: ExternalGroups {
        ExternalGroups(path: path + "/external-groups")
    }

    public struct ExternalGroups {
        /// Path: `/orgs/{org}/external-groups`
        public let path: String

        /// List external groups in an organization
        ///
        /// Lists external groups available in an organization. You can query the groups using the `display_name` parameter, only groups with a `group_name` containing the text provided in the `display_name` parameter will be returned.  You can also limit your page results using the `per_page` parameter. GitHub generates a url-encoded `page` token using a cursor value for where the next page begins. For more information on cursor pagination, see "[Offset and Cursor Pagination explained](https://dev.to/jackmarchant/offset-and-cursor-pagination-explained-b89)."
        /// 
        /// You can manage team membership with your identity provider using Enterprise Managed Users for GitHub Enterprise Cloud. For more information, see "[GitHub's products](https://docs.github.com/github/getting-started-with-github/githubs-products)" in the GitHub Help documentation.
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/teams#list-external-idp-groups-for-an-organization)
        public func get(parameters: GetParameters? = nil) -> Request<OctoKit.ExternalGroups> {
            Request(method: "GET", url: path, query: parameters?.asQuery, id: "teams/list-external-idp-groups-for-org")
        }

        public enum GetResponseHeaders {
            public static let link = HTTPHeader<String>(field: "Link")
        }

        public struct GetParameters {
            public var perPage: Int?
            public var page: Int?
            public var displayName: String?

            public init(perPage: Int? = nil, page: Int? = nil, displayName: String? = nil) {
                self.perPage = perPage
                self.page = page
                self.displayName = displayName
            }

            public var asQuery: [(String, String?)] {
                let encoder = URLQueryEncoder()
                encoder.encode(perPage, forKey: "per_page")
                encoder.encode(page, forKey: "page")
                encoder.encode(displayName, forKey: "display_name")
                return encoder.items
            }
        }
    }
}
