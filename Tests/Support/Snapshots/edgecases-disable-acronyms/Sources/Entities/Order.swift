// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate

public struct Order: Codable {
    public var id: Int?
    public var petId: Int?
    public var quantity: Int?
    public var shipDate: Date?
    /// Order Status
    public var status: Status?
    public var isComplete: Bool

    /// Order Status
    public enum Status: String, Codable, CaseIterable {
        case placed
        case approved
        case delivered
    }

    public init(id: Int? = nil, petId: Int? = nil, quantity: Int? = nil, shipDate: Date? = nil, status: Status? = nil, isComplete: Bool? = nil) {
        self.id = id
        self.petId = petId
        self.quantity = quantity
        self.shipDate = shipDate
        self.status = status
        self.isComplete = isComplete ?? false
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.id = try values.decodeIfPresent(Int.self, forKey: "id")
        self.petId = try values.decodeIfPresent(Int.self, forKey: "petId")
        self.quantity = try values.decodeIfPresent(Int.self, forKey: "quantity")
        self.shipDate = try values.decodeIfPresent(Date.self, forKey: "shipDate")
        self.status = try values.decodeIfPresent(Status.self, forKey: "status")
        self.isComplete = try values.decodeIfPresent(Bool.self, forKey: "complete") ?? false
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(id, forKey: "id")
        try values.encodeIfPresent(petId, forKey: "petId")
        try values.encodeIfPresent(quantity, forKey: "quantity")
        try values.encodeIfPresent(shipDate, forKey: "shipDate")
        try values.encodeIfPresent(status, forKey: "status")
        try values.encodeIfPresent(isComplete, forKey: "complete")
    }
}