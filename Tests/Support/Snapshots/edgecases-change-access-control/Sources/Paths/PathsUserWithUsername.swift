// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.User {
    func username(_ username: String) -> WithUsername {
        WithUsername(path: "\(path)/\(username)")
    }

    struct WithUsername {
        /// Path: `/user/{username}`
        let path: String

        /// Get user by user name
        var get: Request<edgecases_change_access_control.User> {
            Request(method: "GET", url: path, id: "getUserByName")
        }

        /// Updated user
        ///
        /// This can only be done by the logged in user.
        func put(_ body: edgecases_change_access_control.User) -> Request<Void> {
            Request(method: "PUT", url: path, body: body, id: "updateUser")
        }

        /// Delete user
        ///
        /// This can only be done by the logged in user.
        var delete: Request<Void> {
            Request(method: "DELETE", url: path, id: "deleteUser")
        }
    }
}
