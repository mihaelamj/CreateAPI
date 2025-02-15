// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths {
    static var fake: Fake {
        Fake(path: "/fake")
    }

    struct Fake {
        /// Path: `/fake`
        let path: String

        /// To test enum parameters
        func get(parameters: GetParameters? = nil) -> Request<Void> {
            Request(method: "GET", url: path, query: parameters?.asQuery, id: "testEnumParameters")
        }

        struct GetParameters {
            var enumQueryStringArray: [EnumQueryStringArray]?
            var enumQueryString: EnumQueryString?
            var enumQueryInteger: Int32?

            enum EnumQueryStringArray: String, Codable, CaseIterable {
                case greaterThan = ">"
                case dollar = "$"
            }

            enum EnumQueryString: String, Codable, CaseIterable {
                case abc = "_abc"
                case minusefg = "-efg"
                case xyz = "(xyz)"
            }

            init(enumQueryStringArray: [EnumQueryStringArray]? = nil, enumQueryString: EnumQueryString? = nil, enumQueryInteger: Int32? = nil) {
                self.enumQueryStringArray = enumQueryStringArray
                self.enumQueryString = enumQueryString
                self.enumQueryInteger = enumQueryInteger
            }

            var asQuery: [(String, String?)] {
                let encoder = URLQueryEncoder()
                encoder.encode(enumQueryStringArray, forKey: "enum_query_string_array")
                encoder.encode(enumQueryString, forKey: "enum_query_string")
                encoder.encode(enumQueryInteger, forKey: "enum_query_integer")
                return encoder.items
            }
        }

        /// Fake endpoint for testing various parameters
        func post(_ body: PostRequest? = nil) -> Request<Void> {
            Request(method: "POST", url: path, body: body.map(URLQueryEncoder.encode)?.percentEncodedQuery, id: "testEndpointParameters")
        }

        struct PostRequest: Encodable {
            /// None
            var integer: Int?
            /// None
            var int32: Int32?
            /// None
            var int64: Int64?
            /// None
            var number: Double
            /// None
            var float: Float?
            /// None
            var double: Double
            /// None
            var string: String?
            /// None
            var patternWithoutDelimiter: String
            /// None
            var byte: Data
            /// None
            var binary: String?
            /// None
            var date: NaiveDate?
            /// None
            var dateTime: Date?
            /// None
            var password: String?
            /// None
            var callback: String?

            init(integer: Int? = nil, int32: Int32? = nil, int64: Int64? = nil, number: Double, float: Float? = nil, double: Double, string: String? = nil, patternWithoutDelimiter: String, byte: Data, binary: String? = nil, date: NaiveDate? = nil, dateTime: Date? = nil, password: String? = nil, callback: String? = nil) {
                self.integer = integer
                self.int32 = int32
                self.int64 = int64
                self.number = number
                self.float = float
                self.double = double
                self.string = string
                self.patternWithoutDelimiter = patternWithoutDelimiter
                self.byte = byte
                self.binary = binary
                self.date = date
                self.dateTime = dateTime
                self.password = password
                self.callback = callback
            }

            var asQuery: [(String, String?)] {
                let encoder = URLQueryEncoder()
                encoder.encode(integer, forKey: "integer")
                encoder.encode(int32, forKey: "int32")
                encoder.encode(int64, forKey: "int64")
                encoder.encode(number, forKey: "number")
                encoder.encode(float, forKey: "float")
                encoder.encode(double, forKey: "double")
                encoder.encode(string, forKey: "string")
                encoder.encode(patternWithoutDelimiter, forKey: "pattern_without_delimiter")
                encoder.encode(byte, forKey: "byte")
                encoder.encode(binary, forKey: "binary")
                encoder.encode(date, forKey: "date")
                encoder.encode(dateTime, forKey: "dateTime")
                encoder.encode(password, forKey: "password")
                encoder.encode(callback, forKey: "callback")
                return encoder.items
            }
        }

        /// To test "client" model
        func patch(_ body: edgecases_change_access_control.Client) -> Request<edgecases_change_access_control.Client> {
            Request(method: "PATCH", url: path, body: body, id: "testClientModel")
        }
    }
}
