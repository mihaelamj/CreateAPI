// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate

/// Model for testing model name starting with number
struct __200Response: Codable {
    var name: Int?
    var `class`: String?

    init(name: Int? = nil, `class`: String? = nil) {
        self.name = name
        self.class = `class`
    }

    private enum CodingKeys: String, CodingKey {
        case name
        case `class`
    }
}