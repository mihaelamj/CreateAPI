// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate
import Get
import URLQueryEncoder

extension Paths.Store {
    public var order: Order {
        Order(path: path + "/order")
    }

    public struct Order {
        /// Path: `/store/order`
        public let path: String

        /// Place an order for a pet
        public func post(_ body: edgecases_data_types.Order) -> Request<edgecases_data_types.Order> {
            Request(method: "POST", url: path, body: body, id: "placeOrder")
        }
    }
}
