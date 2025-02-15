// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.Store {
    var inventory: Inventory {
        Inventory(path: path + "/inventory")
    }

    struct Inventory {
        /// Path: `/store/inventory`
        let path: String

        /// Returns pet inventories by status
        ///
        /// Returns a map of status codes to quantities
        var get: Request<[String: Int32]> {
            Request(method: "GET", url: path, id: "getInventory")
        }
    }
}
