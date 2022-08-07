// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate

public struct EnumTest: Codable {
    public var enumString: String?
    public var enumInteger: Int?
    public var enumNumber: Double?
    public var outerEnum: String?

    public init(enumString: String? = nil, enumInteger: Int? = nil, enumNumber: Double? = nil, outerEnum: String? = nil) {
        self.enumString = enumString
        self.enumInteger = enumInteger
        self.enumNumber = enumNumber
        self.outerEnum = outerEnum
    }

    private enum CodingKeys: String, CodingKey {
        case enumString = "enum_string"
        case enumInteger = "enum_integer"
        case enumNumber = "enum_number"
        case outerEnum
    }
}