// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths {
    public static var pets: Pets {
        Pets(path: "/pets")
    }

    public struct Pets {
        /// Path: `/pets`
        public let path: String

        public func get(limit: Int32? = nil) -> Request<[petstore_disable_comments.Pet]> {
            Request(method: "GET", url: path, query: makeGetQuery(limit), id: "listPets")
        }

        public enum GetResponseHeaders {
            public static let next = HTTPHeader<String>(field: "x-next")
        }

        private func makeGetQuery(_ limit: Int32?) -> [(String, String?)] {
            let encoder = URLQueryEncoder()
            encoder.encode(limit, forKey: "limit")
            return encoder.items
        }

        public var post: Request<Void> {
            Request(method: "POST", url: path, id: "createPets")
        }
    }
}
