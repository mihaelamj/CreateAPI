// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.Users.WithUsername.Packages.WithPackageType.WithPackageName.Versions {
    public func packageVersionID(_ packageVersionID: Int) -> WithPackageVersionID {
        WithPackageVersionID(path: "\(path)/\(packageVersionID)")
    }

    public struct WithPackageVersionID {
        /// Path: `/users/{username}/packages/{package_type}/{package_name}/versions/{package_version_id}`
        public let path: String

        /// Get a package version for a user
        ///
        /// Gets a specific package version for a public package owned by a specified user.
        /// 
        /// At this time, to use this endpoint, you must authenticate using an access token with the `packages:read` scope.
        /// If `package_type` is not `container`, your token must also include the `repo` scope.
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/packages#get-a-package-version-for-a-user)
        public var get: Request<OctoKit.PackageVersion> {
            Request(method: "GET", url: path, id: "packages/get-package-version-for-user")
        }

        /// Delete package version for a user
        ///
        /// Deletes a specific package version for a user. If the package is public and the package version has more than 5,000 downloads, you cannot delete the package version. In this scenario, contact GitHub support for further assistance.
        /// 
        /// To use this endpoint, you must authenticate using an access token with the `packages:read` and `packages:delete` scopes. In addition:
        /// - If `package_type` is not `container`, your token must also include the `repo` scope.
        /// - If `package_type` is `container`, you must also have admin permissions to the container you want to delete.
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/packages#delete-a-package-version-for-a-user)
        public var delete: Request<Void> {
            Request(method: "DELETE", url: path, id: "packages/delete-package-version-for-user")
        }
    }
}
