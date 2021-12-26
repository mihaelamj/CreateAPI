// Generated by Create API
// https://github.com/kean/CreateAPI
//
// swiftlint:disable all

import Foundation
import Get
import HTTPHeaders

extension Paths {
    public static var pets: Pets {
        Pets(path: "/pets")
    }

    public struct Pets {
        /// Path: `/pets`
        public let path: String

        /// List all pets
        public func get(limit: Int? = nil) -> Request<[petstore_operation_id.Pet]> {
            .get(path, query: makeGetQuery(limit)).id("listPets")
        }

        public enum GetResponseHeaders {
            /// A link to the next page of responses
            public static let next = HTTPHeader<String>(field: "x-next")
        }

        private func makeGetQuery(_ limit: Int?) -> [(String, String?)] {
            var query: [(String, String?)] = []
            query.addQueryItem("limit", limit)
            return query
        }

        /// Create a pet
        public var post: Request<Void> {
            .post(path).id("createPets")
        }
    }
}

extension Paths.Pets {
    public func petID(_ petID: String) -> WithPetID {
        WithPetID(path: "\(path)/\(petID)")
    }

    public struct WithPetID {
        /// Path: `/pets/{petId}`
        public let path: String

        /// Info for a specific pet
        public var get: Request<petstore_operation_id.Pet> {
            .get(path).id("showPetById")
        }
    }
}

public enum Paths {}

private extension Request {
    func id(_ id: String) -> Request {
        var copy = self
        copy.id = id
        return copy
    }
}

protocol QueryEncodable {
    var asQueryValue: String { get }
}

extension Bool: QueryEncodable {
    var asQueryValue: String {
        self ? "true" : "false"
    }
}

extension Date: QueryEncodable {
    var asQueryValue: String {
        ISO8601DateFormatter().string(from: self)
    }
}

extension Double: QueryEncodable {
    var asQueryValue: String {
        String(self)
    }
}

extension Int: QueryEncodable {
    var asQueryValue: String {
        String(self)
    }
}

extension Int32: QueryEncodable {
    var asQueryValue: String {
        String(self)
    }
}

extension Int64: QueryEncodable {
    var asQueryValue: String {
        String(self)
    }
}

extension String: QueryEncodable {
    var asQueryValue: String {
        self
    }
}

extension URL: QueryEncodable {
    var asQueryValue: String {
        absoluteString
    }
}

extension RawRepresentable where RawValue == String {
    var asQueryValue: String {
        rawValue
    }
}

extension Array where Element == (String, String?) {
    mutating func addQueryItem<T: RawRepresentable>(_ name: String, _ value: T?) where T.RawValue == String {
        addQueryItem(name, value?.rawValue)
    }
    
    mutating func addQueryItem(_ name: String, _ value: QueryEncodable?) {
        guard let value = value?.asQueryValue, !value.isEmpty else { return }
        append((name, value))
    }
    
    mutating func addDeepObject(_ name: String, _ query: [(String, String?)]?) {
        for (key, value) in query ?? [] {
            addQueryItem("\(name)[\(key)]", value)
        }
    }

    var asPercentEncodedQuery: String {
        var components = URLComponents()
        components.queryItems = self.map(URLQueryItem.init)
        return components.percentEncodedQuery ?? ""
    }
    
    // [("role", "admin"), ("name": "kean)] -> "role,admin,name,kean"
    var asCompactQuery: String {
        flatMap { [$0, $1] }.compactMap { $0 }.joined(separator: ",")
    }
}
