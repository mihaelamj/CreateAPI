// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.Orgs.WithOrg.Actions.Secrets {
    public func secretName(_ secretName: String) -> WithSecretName {
        WithSecretName(path: "\(path)/\(secretName)")
    }

    public struct WithSecretName {
        /// Path: `/orgs/{org}/actions/secrets/{secret_name}`
        public let path: String

        /// Get an organization secret
        ///
        /// Gets a single organization secret without revealing its encrypted value. You must authenticate using an access token with the `admin:org` scope to use this endpoint. GitHub Apps must have the `secrets` organization permission to use this endpoint.
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/actions#get-an-organization-secret)
        public var get: Request<OctoKit.OrganizationActionsSecret> {
            Request(method: "GET", url: path, id: "actions/get-org-secret")
        }

        /// Create or update an organization secret
        ///
        /// Creates or updates an organization secret with an encrypted value. Encrypt your secret using
        /// [LibSodium](https://libsodium.gitbook.io/doc/bindings_for_other_languages). You must authenticate using an access
        /// token with the `admin:org` scope to use this endpoint. GitHub Apps must have the `secrets` organization permission to
        /// use this endpoint.
        /// 
        /// #### Example encrypting a secret using Node.js
        /// 
        /// Encrypt your secret using the [tweetsodium](https://github.com/github/tweetsodium) library.
        /// 
        /// ```
        /// const sodium = require('tweetsodium');
        /// 
        /// const key = "base64-encoded-public-key";
        /// const value = "plain-text-secret";
        /// 
        /// // Convert the message and key to Uint8Array's (Buffer implements that interface)
        /// const messageBytes = Buffer.from(value);
        /// const keyBytes = Buffer.from(key, 'base64');
        /// 
        /// // Encrypt using LibSodium.
        /// const encryptedBytes = sodium.seal(messageBytes, keyBytes);
        /// 
        /// // Base64 the encrypted secret
        /// const encrypted = Buffer.from(encryptedBytes).toString('base64');
        /// 
        /// console.log(encrypted);
        /// ```
        /// 
        /// 
        /// #### Example encrypting a secret using Python
        /// 
        /// Encrypt your secret using [pynacl](https://pynacl.readthedocs.io/en/stable/public/#nacl-public-sealedbox) with Python 3.
        /// 
        /// ```
        /// from base64 import b64encode
        /// from nacl import encoding, public
        /// 
        /// def encrypt(public_key: str, secret_value: str) -> str:
        ///   """Encrypt a Unicode string using the public key."""
        ///   public_key = public.PublicKey(public_key.encode("utf-8"), encoding.Base64Encoder())
        ///   sealed_box = public.SealedBox(public_key)
        ///   encrypted = sealed_box.encrypt(secret_value.encode("utf-8"))
        ///   return b64encode(encrypted).decode("utf-8")
        /// ```
        /// 
        /// #### Example encrypting a secret using C#
        /// 
        /// Encrypt your secret using the [Sodium.Core](https://www.nuget.org/packages/Sodium.Core/) package.
        /// 
        /// ```
        /// var secretValue = System.Text.Encoding.UTF8.GetBytes("mySecret");
        /// var publicKey = Convert.FromBase64String("2Sg8iYjAxxmI2LvUXpJjkYrMxURPc8r+dB7TJyvvcCU=");
        /// 
        /// var sealedPublicKeyBox = Sodium.SealedPublicKeyBox.Create(secretValue, publicKey);
        /// 
        /// Console.WriteLine(Convert.ToBase64String(sealedPublicKeyBox));
        /// ```
        /// 
        /// #### Example encrypting a secret using Ruby
        /// 
        /// Encrypt your secret using the [rbnacl](https://github.com/RubyCrypto/rbnacl) gem.
        /// 
        /// ```ruby
        /// require "rbnacl"
        /// require "base64"
        /// 
        /// key = Base64.decode64("+ZYvJDZMHUfBkJdyq5Zm9SKqeuBQ4sj+6sfjlH4CgG0=")
        /// public_key = RbNaCl::PublicKey.new(key)
        /// 
        /// box = RbNaCl::Boxes::Sealed.from_public_key(public_key)
        /// encrypted_secret = box.encrypt("my_secret")
        /// 
        /// # Print the base64 encoded secret
        /// puts Base64.strict_encode64(encrypted_secret)
        /// ```
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/actions#create-or-update-an-organization-secret)
        public func put(_ body: PutRequest) -> Request<Void> {
            Request(method: "PUT", url: path, body: body, id: "actions/create-or-update-org-secret")
        }

        public struct PutRequest: Encodable {
            /// Value for your secret, encrypted with [LibSodium](https://libsodium.gitbook.io/doc/bindings_for_other_languages) using the public key retrieved from the [Get an organization public key](https://docs.github.com/rest/reference/actions#get-an-organization-public-key) endpoint.
            public var encryptedValue: String?
            /// ID of the key you used to encrypt the secret.
            public var keyID: String?
            /// Configures the access that repositories have to the organization secret. Can be one of:  
            /// \- `all` - All repositories in an organization can access the secret.  
            /// \- `private` - Private repositories in an organization can access the secret.  
            /// \- `selected` - Only specific repositories can access the secret.
            public var visibility: Visibility
            /// An array of repository ids that can access the organization secret. You can only provide a list of repository ids when the `visibility` is set to `selected`. You can manage the list of selected repositories using the [List selected repositories for an organization secret](https://docs.github.com/rest/reference/actions#list-selected-repositories-for-an-organization-secret), [Set selected repositories for an organization secret](https://docs.github.com/rest/reference/actions#set-selected-repositories-for-an-organization-secret), and [Remove selected repository from an organization secret](https://docs.github.com/rest/reference/actions#remove-selected-repository-from-an-organization-secret) endpoints.
            public var selectedRepositoryIDs: [String]?

            /// Configures the access that repositories have to the organization secret. Can be one of:  
            /// \- `all` - All repositories in an organization can access the secret.  
            /// \- `private` - Private repositories in an organization can access the secret.  
            /// \- `selected` - Only specific repositories can access the secret.
            public enum Visibility: String, Codable, CaseIterable {
                case all
                case `private`
                case selected
            }

            public init(encryptedValue: String? = nil, keyID: String? = nil, visibility: Visibility, selectedRepositoryIDs: [String]? = nil) {
                self.encryptedValue = encryptedValue
                self.keyID = keyID
                self.visibility = visibility
                self.selectedRepositoryIDs = selectedRepositoryIDs
            }

            public func encode(to encoder: Encoder) throws {
                var values = encoder.container(keyedBy: StringCodingKey.self)
                try values.encodeIfPresent(encryptedValue, forKey: "encrypted_value")
                try values.encodeIfPresent(keyID, forKey: "key_id")
                try values.encode(visibility, forKey: "visibility")
                try values.encodeIfPresent(selectedRepositoryIDs, forKey: "selected_repository_ids")
            }
        }

        /// Delete an organization secret
        ///
        /// Deletes a secret in an organization using the secret name. You must authenticate using an access token with the `admin:org` scope to use this endpoint. GitHub Apps must have the `secrets` organization permission to use this endpoint.
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/actions#delete-an-organization-secret)
        public var delete: Request<Void> {
            Request(method: "DELETE", url: path, id: "actions/delete-org-secret")
        }
    }
}
