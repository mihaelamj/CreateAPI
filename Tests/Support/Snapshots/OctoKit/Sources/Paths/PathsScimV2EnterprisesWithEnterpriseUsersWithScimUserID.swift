// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.Scim.V2.Enterprises.WithEnterprise.Users {
    public func scimUserID(_ scimUserID: String) -> WithScimUserID {
        WithScimUserID(path: "\(path)/\(scimUserID)")
    }

    public struct WithScimUserID {
        /// Path: `/scim/v2/enterprises/{enterprise}/Users/{scim_user_id}`
        public let path: String

        /// Get SCIM provisioning information for an enterprise user
        ///
        /// **Note:** The SCIM API endpoints for enterprise accounts are currently in beta and are subject to change.
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/enterprise-admin#get-scim-provisioning-information-for-an-enterprise-user)
        public var get: Request<OctoKit.ScimEnterpriseUser> {
            Request(method: "GET", url: path, id: "enterprise-admin/get-provisioning-information-for-enterprise-user")
        }

        /// Set SCIM information for a provisioned enterprise user
        ///
        /// **Note:** The SCIM API endpoints for enterprise accounts are currently in beta and are subject to change.
        /// 
        /// Replaces an existing provisioned user's information. You must provide all the information required for the user as if you were provisioning them for the first time. Any existing user information that you don't provide will be removed. If you want to only update a specific attribute, use the [Update an attribute for a SCIM user](#update-an-attribute-for-an-enterprise-scim-user) endpoint instead.
        /// 
        /// You must at least provide the required values for the user: `userName`, `name`, and `emails`.
        /// 
        /// **Warning:** Setting `active: false` removes the user from the enterprise, deletes the external identity, and deletes the associated `{scim_user_id}`.
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/enterprise-admin#set-scim-information-for-a-provisioned-enterprise-user)
        public func put(_ body: PutRequest) -> Request<OctoKit.ScimEnterpriseUser> {
            Request(method: "PUT", url: path, body: body, id: "enterprise-admin/set-information-for-provisioned-enterprise-user")
        }

        public struct PutRequest: Encodable {
            /// The SCIM schema URIs.
            public var schemas: [String]
            /// The username for the user.
            public var userName: String
            public var name: Name
            /// List of user emails.
            public var emails: [Email]
            /// List of SCIM group IDs the user is a member of.
            public var groups: [Group]?

            public struct Name: Encodable {
                /// The first name of the user.
                public var givenName: String
                /// The last name of the user.
                public var familyName: String

                public init(givenName: String, familyName: String) {
                    self.givenName = givenName
                    self.familyName = familyName
                }

                public func encode(to encoder: Encoder) throws {
                    var values = encoder.container(keyedBy: StringCodingKey.self)
                    try values.encode(givenName, forKey: "givenName")
                    try values.encode(familyName, forKey: "familyName")
                }
            }

            public struct Email: Encodable {
                /// The email address.
                public var value: String
                /// The type of email address.
                public var type: String
                /// Whether this email address is the primary address.
                public var isPrimary: Bool

                public init(value: String, type: String, isPrimary: Bool) {
                    self.value = value
                    self.type = type
                    self.isPrimary = isPrimary
                }

                public func encode(to encoder: Encoder) throws {
                    var values = encoder.container(keyedBy: StringCodingKey.self)
                    try values.encode(value, forKey: "value")
                    try values.encode(type, forKey: "type")
                    try values.encode(isPrimary, forKey: "primary")
                }
            }

            public struct Group: Encodable {
                public var value: String?

                public init(value: String? = nil) {
                    self.value = value
                }

                public func encode(to encoder: Encoder) throws {
                    var values = encoder.container(keyedBy: StringCodingKey.self)
                    try values.encodeIfPresent(value, forKey: "value")
                }
            }

            public init(schemas: [String], userName: String, name: Name, emails: [Email], groups: [Group]? = nil) {
                self.schemas = schemas
                self.userName = userName
                self.name = name
                self.emails = emails
                self.groups = groups
            }

            public func encode(to encoder: Encoder) throws {
                var values = encoder.container(keyedBy: StringCodingKey.self)
                try values.encode(schemas, forKey: "schemas")
                try values.encode(userName, forKey: "userName")
                try values.encode(name, forKey: "name")
                try values.encode(emails, forKey: "emails")
                try values.encodeIfPresent(groups, forKey: "groups")
            }
        }

        /// Update an attribute for a SCIM enterprise user
        ///
        /// **Note:** The SCIM API endpoints for enterprise accounts are currently in beta and are subject to change.
        /// 
        /// Allows you to change a provisioned user's individual attributes. To change a user's values, you must provide a specific `Operations` JSON format that contains at least one of the `add`, `remove`, or `replace` operations. For examples and more information on the SCIM operations format, see the [SCIM specification](https://tools.ietf.org/html/rfc7644#section-3.5.2).
        /// 
        /// **Note:** Complicated SCIM `path` selectors that include filters are not supported. For example, a `path` selector defined as `"path": "emails[type eq \"work\"]"` will not work.
        /// 
        /// **Warning:** If you set `active:false` using the `replace` operation (as shown in the JSON example below), it removes the user from the enterprise, deletes the external identity, and deletes the associated `:scim_user_id`.
        /// 
        /// ```
        /// {
        ///   "Operations":[{
        ///     "op":"replace",
        ///     "value":{
        ///       "active":false
        ///     }
        ///   }]
        /// }
        /// ```
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/enterprise-admin#update-an-attribute-for-a-scim-enterprise-user)
        public func patch(_ body: PatchRequest) -> Request<OctoKit.ScimEnterpriseUser> {
            Request(method: "PATCH", url: path, body: body, id: "enterprise-admin/update-attribute-for-enterprise-user")
        }

        public struct PatchRequest: Encodable {
            /// The SCIM schema URIs.
            public var schemas: [String]
            /// Array of [SCIM operations](https://tools.ietf.org/html/rfc7644#section-3.5.2).
            public var operations: [[String: AnyJSON]]

            public init(schemas: [String], operations: [[String: AnyJSON]]) {
                self.schemas = schemas
                self.operations = operations
            }

            public func encode(to encoder: Encoder) throws {
                var values = encoder.container(keyedBy: StringCodingKey.self)
                try values.encode(schemas, forKey: "schemas")
                try values.encode(operations, forKey: "Operations")
            }
        }

        /// Delete a SCIM user from an enterprise
        ///
        /// **Note:** The SCIM API endpoints for enterprise accounts are currently in beta and are subject to change.
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/enterprise-admin#delete-a-scim-user-from-an-enterprise)
        public var delete: Request<Void> {
            Request(method: "DELETE", url: path, id: "enterprise-admin/delete-user-from-enterprise")
        }
    }
}
