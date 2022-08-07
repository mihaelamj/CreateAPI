// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate

public struct Feed: Codable {
    /// Example: "https://github.com/timeline"
    public var timelineURL: String
    /// Example: "https://github.com/{user}"
    public var userURL: String
    /// Example: "https://github.com/octocat"
    public var currentUserPublicURL: String?
    /// Example: "https://github.com/octocat.private?token=abc123"
    public var currentUserURL: String?
    /// Example: "https://github.com/octocat.private.actor?token=abc123"
    public var currentUserActorURL: String?
    /// Example: "https://github.com/octocat-org"
    public var currentUserOrganizationURL: String?
    /// Example: ["https://github.com/organizations/github/octocat.private.atom?token=abc123"]
    public var currentUserOrganizationURLs: [URL]?
    /// Example: "https://github.com/security-advisories"
    public var securityAdvisoriesURL: String?
    public var links: Links

    public struct Links: Codable {
        /// Link With Type
        ///
        /// Hypermedia Link with Type
        public var timeline: LinkWithType
        /// Link With Type
        ///
        /// Hypermedia Link with Type
        public var user: LinkWithType
        /// Link With Type
        ///
        /// Hypermedia Link with Type
        public var securityAdvisories: LinkWithType?
        /// Link With Type
        ///
        /// Hypermedia Link with Type
        public var currentUser: LinkWithType?
        /// Link With Type
        ///
        /// Hypermedia Link with Type
        public var currentUserPublic: LinkWithType?
        /// Link With Type
        ///
        /// Hypermedia Link with Type
        public var currentUserActor: LinkWithType?
        /// Link With Type
        ///
        /// Hypermedia Link with Type
        public var currentUserOrganization: LinkWithType?
        public var currentUserOrganizations: [LinkWithType]?

        public init(timeline: LinkWithType, user: LinkWithType, securityAdvisories: LinkWithType? = nil, currentUser: LinkWithType? = nil, currentUserPublic: LinkWithType? = nil, currentUserActor: LinkWithType? = nil, currentUserOrganization: LinkWithType? = nil, currentUserOrganizations: [LinkWithType]? = nil) {
            self.timeline = timeline
            self.user = user
            self.securityAdvisories = securityAdvisories
            self.currentUser = currentUser
            self.currentUserPublic = currentUserPublic
            self.currentUserActor = currentUserActor
            self.currentUserOrganization = currentUserOrganization
            self.currentUserOrganizations = currentUserOrganizations
        }

        private enum CodingKeys: String, CodingKey {
            case timeline
            case user
            case securityAdvisories = "security_advisories"
            case currentUser = "current_user"
            case currentUserPublic = "current_user_public"
            case currentUserActor = "current_user_actor"
            case currentUserOrganization = "current_user_organization"
            case currentUserOrganizations = "current_user_organizations"
        }
    }

    public init(timelineURL: String, userURL: String, currentUserPublicURL: String? = nil, currentUserURL: String? = nil, currentUserActorURL: String? = nil, currentUserOrganizationURL: String? = nil, currentUserOrganizationURLs: [URL]? = nil, securityAdvisoriesURL: String? = nil, links: Links) {
        self.timelineURL = timelineURL
        self.userURL = userURL
        self.currentUserPublicURL = currentUserPublicURL
        self.currentUserURL = currentUserURL
        self.currentUserActorURL = currentUserActorURL
        self.currentUserOrganizationURL = currentUserOrganizationURL
        self.currentUserOrganizationURLs = currentUserOrganizationURLs
        self.securityAdvisoriesURL = securityAdvisoriesURL
        self.links = links
    }

    private enum CodingKeys: String, CodingKey {
        case timelineURL = "timeline_url"
        case userURL = "user_url"
        case currentUserPublicURL = "current_user_public_url"
        case currentUserURL = "current_user_url"
        case currentUserActorURL = "current_user_actor_url"
        case currentUserOrganizationURL = "current_user_organization_url"
        case currentUserOrganizationURLs = "current_user_organization_urls"
        case securityAdvisoriesURL = "security_advisories_url"
        case links = "_links"
    }
}