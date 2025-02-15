// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.User.Packages.WithPackageType.WithPackageName.Versions {
    public func packageVersionID(_ packageVersionID: Int) -> WithPackageVersionID {
        WithPackageVersionID(path: "\(path)/\(packageVersionID)")
    }

    public struct WithPackageVersionID {
        /// Path: `/user/packages/{package_type}/{package_name}/versions/{package_version_id}`
        public let path: String

        /// Get a package version for the authenticated user
        ///
        /// Gets a specific package version for a package owned by the authenticated user.
        /// 
        /// To use this endpoint, you must authenticate using an access token with the `packages:read` scope.
        /// If `package_type` is not `container`, your token must also include the `repo` scope.
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/packages#get-a-package-version-for-the-authenticated-user)
        public var get: Request<OctoKit.PackageVersion> {
            Request(method: "GET", url: path, id: "packages/get-package-version-for-authenticated-user")
        }

        /// Delete a package version for the authenticated user
        ///
        /// Deletes a specific package version for a package owned by the authenticated user.  If the package is public and the package version has more than 5,000 downloads, you cannot delete the package version. In this scenario, contact GitHub support for further assistance.
        /// 
        /// To use this endpoint, you must have admin permissions in the organization and authenticate using an access token with the `packages:read` and `packages:delete` scopes.
        /// If `package_type` is not `container`, your token must also include the `repo` scope.
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/packages#delete-a-package-version-for-the-authenticated-user)
        public var delete: Request<Void> {
            Request(method: "DELETE", url: path, id: "packages/delete-package-version-for-authenticated-user")
        }
    }
}
