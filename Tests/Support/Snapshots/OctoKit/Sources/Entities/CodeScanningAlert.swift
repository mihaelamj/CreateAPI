// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate

public struct CodeScanningAlert: Codable {
    /// The security alert number.
    public var number: Int
    /// The time that the alert was created in ISO 8601 format: `YYYY-MM-DDTHH:MM:SSZ`.
    public var createdAt: Date
    /// The time that the alert was last updated in ISO 8601 format: `YYYY-MM-DDTHH:MM:SSZ`.
    public var updatedAt: Date?
    /// The REST API URL of the alert resource.
    public var url: URL
    /// The GitHub URL of the alert resource.
    public var htmlURL: URL
    /// The REST API URL for fetching the list of instances for an alert.
    public var instancesURL: URL
    /// State of a code scanning alert.
    public var state: CodeScanningAlertState
    /// The time that the alert was no longer detected and was considered fixed in ISO 8601 format: `YYYY-MM-DDTHH:MM:SSZ`.
    public var fixedAt: Date?
    /// Simple User
    public var dismissedBy: SimpleUser?
    /// The time that the alert was dismissed in ISO 8601 format: `YYYY-MM-DDTHH:MM:SSZ`.
    public var dismissedAt: Date?
    /// **Required when the state is dismissed.** The reason for dismissing or closing the alert. Can be one of: `false positive`, `won't fix`, and `used in tests`.
    public var dismissedReason: CodeScanningAlertDismissedReason?
    public var rule: CodeScanningAlertRule
    public var tool: CodeScanningAnalysisTool
    public var mostRecentInstance: CodeScanningAlertInstance

    public init(number: Int, createdAt: Date, updatedAt: Date? = nil, url: URL, htmlURL: URL, instancesURL: URL, state: CodeScanningAlertState, fixedAt: Date? = nil, dismissedBy: SimpleUser? = nil, dismissedAt: Date? = nil, dismissedReason: CodeScanningAlertDismissedReason? = nil, rule: CodeScanningAlertRule, tool: CodeScanningAnalysisTool, mostRecentInstance: CodeScanningAlertInstance) {
        self.number = number
        self.createdAt = createdAt
        self.updatedAt = updatedAt
        self.url = url
        self.htmlURL = htmlURL
        self.instancesURL = instancesURL
        self.state = state
        self.fixedAt = fixedAt
        self.dismissedBy = dismissedBy
        self.dismissedAt = dismissedAt
        self.dismissedReason = dismissedReason
        self.rule = rule
        self.tool = tool
        self.mostRecentInstance = mostRecentInstance
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.number = try values.decode(Int.self, forKey: "number")
        self.createdAt = try values.decode(Date.self, forKey: "created_at")
        self.updatedAt = try values.decodeIfPresent(Date.self, forKey: "updated_at")
        self.url = try values.decode(URL.self, forKey: "url")
        self.htmlURL = try values.decode(URL.self, forKey: "html_url")
        self.instancesURL = try values.decode(URL.self, forKey: "instances_url")
        self.state = try values.decode(CodeScanningAlertState.self, forKey: "state")
        self.fixedAt = try values.decodeIfPresent(Date.self, forKey: "fixed_at")
        self.dismissedBy = try values.decodeIfPresent(SimpleUser.self, forKey: "dismissed_by")
        self.dismissedAt = try values.decodeIfPresent(Date.self, forKey: "dismissed_at")
        self.dismissedReason = try values.decodeIfPresent(CodeScanningAlertDismissedReason.self, forKey: "dismissed_reason")
        self.rule = try values.decode(CodeScanningAlertRule.self, forKey: "rule")
        self.tool = try values.decode(CodeScanningAnalysisTool.self, forKey: "tool")
        self.mostRecentInstance = try values.decode(CodeScanningAlertInstance.self, forKey: "most_recent_instance")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(number, forKey: "number")
        try values.encode(createdAt, forKey: "created_at")
        try values.encodeIfPresent(updatedAt, forKey: "updated_at")
        try values.encode(url, forKey: "url")
        try values.encode(htmlURL, forKey: "html_url")
        try values.encode(instancesURL, forKey: "instances_url")
        try values.encode(state, forKey: "state")
        try values.encodeIfPresent(fixedAt, forKey: "fixed_at")
        try values.encodeIfPresent(dismissedBy, forKey: "dismissed_by")
        try values.encodeIfPresent(dismissedAt, forKey: "dismissed_at")
        try values.encodeIfPresent(dismissedReason, forKey: "dismissed_reason")
        try values.encode(rule, forKey: "rule")
        try values.encode(tool, forKey: "tool")
        try values.encode(mostRecentInstance, forKey: "most_recent_instance")
    }
}