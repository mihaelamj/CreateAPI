// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.Repos.WithOwner {
    public func repo(_ repo: String) -> WithRepo {
        WithRepo(path: "\(path)/\(repo)")
    }

    public struct WithRepo {
        /// Path: `/repos/{owner}/{repo}`
        public let path: String

        /// Get a repository
        ///
        /// The `parent` and `source` objects are present when the repository is a fork. `parent` is the repository this repository was forked from, `source` is the ultimate source for the network.
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/repos#get-a-repository)
        public var get: Request<OctoKit.FullRepository> {
            Request(method: "GET", url: path, id: "repos/get")
        }

        /// Update a repository
        ///
        /// **Note**: To edit a repository's topics, use the [Replace all repository topics](https://docs.github.com/rest/reference/repos#replace-all-repository-topics) endpoint.
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/repos/#update-a-repository)
        public func patch(_ body: PatchRequest? = nil) -> Request<OctoKit.FullRepository> {
            Request(method: "PATCH", url: path, body: body, id: "repos/update")
        }

        public struct PatchRequest: Encodable {
            /// The name of the repository.
            public var name: String?
            /// A short description of the repository.
            public var description: String?
            /// A URL with more information about the repository.
            public var homepage: String?
            /// Either `true` to make the repository private or `false` to make it public. Default: `false`.  
            /// **Note**: You will get a `422` error if the organization restricts [changing repository visibility](https://help.github.com/articles/repository-permission-levels-for-an-organization#changing-the-visibility-of-repositories) to organization owners and a non-owner tries to change the value of private. **Note**: You will get a `422` error if the organization restricts [changing repository visibility](https://help.github.com/articles/repository-permission-levels-for-an-organization#changing-the-visibility-of-repositories) to organization owners and a non-owner tries to change the value of private.
            public var isPrivate: Bool
            /// Can be `public` or `private`. If your organization is associated with an enterprise account using GitHub Enterprise Cloud or GitHub Enterprise Server 2.20+, `visibility` can also be `internal`."
            public var visibility: Visibility?
            /// Specify which security and analysis features to enable or disable. For example, to enable GitHub Advanced Security, use this data in the body of the PATCH request: `{"security_and_analysis": {"advanced_security": {"status": "enabled"}}}`. If you have admin permissions for a private repository covered by an Advanced Security license, you can check which security and analysis features are currently enabled by using a `GET /repos/{owner}/{repo}` request.
            public var securityAndAnalysis: SecurityAndAnalysis?
            /// Either `true` to enable issues for this repository or `false` to disable them.
            public var hasIssues: Bool
            /// Either `true` to enable projects for this repository or `false` to disable them. **Note:** If you're creating a repository in an organization that has disabled repository projects, the default is `false`, and if you pass `true`, the API returns an error.
            public var hasProjects: Bool
            /// Either `true` to enable the wiki for this repository or `false` to disable it.
            public var hasWiki: Bool
            /// Either `true` to make this repo available as a template repository or `false` to prevent it.
            public var isTemplate: Bool
            /// Updates the default branch for this repository.
            public var defaultBranch: String?
            /// Either `true` to allow squash-merging pull requests, or `false` to prevent squash-merging.
            public var allowSquashMerge: Bool
            /// Either `true` to allow merging pull requests with a merge commit, or `false` to prevent merging pull requests with merge commits.
            public var allowMergeCommit: Bool
            /// Either `true` to allow rebase-merging pull requests, or `false` to prevent rebase-merging.
            public var allowRebaseMerge: Bool
            /// Either `true` to allow auto-merge on pull requests, or `false` to disallow auto-merge.
            public var allowAutoMerge: Bool
            /// Either `true` to allow automatically deleting head branches when pull requests are merged, or `false` to prevent automatic deletion.
            public var deleteBranchOnMerge: Bool
            /// `true` to archive this repository. **Note**: You cannot unarchive repositories through the API.
            public var isArchived: Bool
            /// Either `true` to allow private forks, or `false` to prevent private forks.
            public var allowForking: Bool

            /// Can be `public` or `private`. If your organization is associated with an enterprise account using GitHub Enterprise Cloud or GitHub Enterprise Server 2.20+, `visibility` can also be `internal`."
            public enum Visibility: String, Codable, CaseIterable {
                case `public`
                case `private`
                case `internal`
            }

            /// Specify which security and analysis features to enable or disable. For example, to enable GitHub Advanced Security, use this data in the body of the PATCH request: `{"security_and_analysis": {"advanced_security": {"status": "enabled"}}}`. If you have admin permissions for a private repository covered by an Advanced Security license, you can check which security and analysis features are currently enabled by using a `GET /repos/{owner}/{repo}` request.
            public struct SecurityAndAnalysis: Encodable {
                /// Use the `status` property to enable or disable GitHub Advanced Security for this repository. For more information, see "[About GitHub Advanced Security](/github/getting-started-with-github/learning-about-github/about-github-advanced-security)."
                public var advancedSecurity: AdvancedSecurity?
                /// Use the `status` property to enable or disable secret scanning for this repository. For more information, see "[About secret scanning](/code-security/secret-security/about-secret-scanning)."
                public var secretScanning: SecretScanning?

                /// Use the `status` property to enable or disable GitHub Advanced Security for this repository. For more information, see "[About GitHub Advanced Security](/github/getting-started-with-github/learning-about-github/about-github-advanced-security)."
                public struct AdvancedSecurity: Encodable {
                    /// Can be `enabled` or `disabled`.
                    public var status: String?

                    public init(status: String? = nil) {
                        self.status = status
                    }

                    public func encode(to encoder: Encoder) throws {
                        var values = encoder.container(keyedBy: StringCodingKey.self)
                        try values.encodeIfPresent(status, forKey: "status")
                    }
                }

                /// Use the `status` property to enable or disable secret scanning for this repository. For more information, see "[About secret scanning](/code-security/secret-security/about-secret-scanning)."
                public struct SecretScanning: Encodable {
                    /// Can be `enabled` or `disabled`.
                    public var status: String?

                    public init(status: String? = nil) {
                        self.status = status
                    }

                    public func encode(to encoder: Encoder) throws {
                        var values = encoder.container(keyedBy: StringCodingKey.self)
                        try values.encodeIfPresent(status, forKey: "status")
                    }
                }

                public init(advancedSecurity: AdvancedSecurity? = nil, secretScanning: SecretScanning? = nil) {
                    self.advancedSecurity = advancedSecurity
                    self.secretScanning = secretScanning
                }

                public func encode(to encoder: Encoder) throws {
                    var values = encoder.container(keyedBy: StringCodingKey.self)
                    try values.encodeIfPresent(advancedSecurity, forKey: "advanced_security")
                    try values.encodeIfPresent(secretScanning, forKey: "secret_scanning")
                }
            }

            public init(name: String? = nil, description: String? = nil, homepage: String? = nil, isPrivate: Bool? = nil, visibility: Visibility? = nil, securityAndAnalysis: SecurityAndAnalysis? = nil, hasIssues: Bool? = nil, hasProjects: Bool? = nil, hasWiki: Bool? = nil, isTemplate: Bool? = nil, defaultBranch: String? = nil, allowSquashMerge: Bool? = nil, allowMergeCommit: Bool? = nil, allowRebaseMerge: Bool? = nil, allowAutoMerge: Bool? = nil, deleteBranchOnMerge: Bool? = nil, isArchived: Bool? = nil, allowForking: Bool? = nil) {
                self.name = name
                self.description = description
                self.homepage = homepage
                self.isPrivate = isPrivate ?? false
                self.visibility = visibility
                self.securityAndAnalysis = securityAndAnalysis
                self.hasIssues = hasIssues ?? true
                self.hasProjects = hasProjects ?? true
                self.hasWiki = hasWiki ?? true
                self.isTemplate = isTemplate ?? false
                self.defaultBranch = defaultBranch
                self.allowSquashMerge = allowSquashMerge ?? true
                self.allowMergeCommit = allowMergeCommit ?? true
                self.allowRebaseMerge = allowRebaseMerge ?? true
                self.allowAutoMerge = allowAutoMerge ?? false
                self.deleteBranchOnMerge = deleteBranchOnMerge ?? false
                self.isArchived = isArchived ?? false
                self.allowForking = allowForking ?? false
            }

            public func encode(to encoder: Encoder) throws {
                var values = encoder.container(keyedBy: StringCodingKey.self)
                try values.encodeIfPresent(name, forKey: "name")
                try values.encodeIfPresent(description, forKey: "description")
                try values.encodeIfPresent(homepage, forKey: "homepage")
                try values.encodeIfPresent(isPrivate, forKey: "private")
                try values.encodeIfPresent(visibility, forKey: "visibility")
                try values.encodeIfPresent(securityAndAnalysis, forKey: "security_and_analysis")
                try values.encodeIfPresent(hasIssues, forKey: "has_issues")
                try values.encodeIfPresent(hasProjects, forKey: "has_projects")
                try values.encodeIfPresent(hasWiki, forKey: "has_wiki")
                try values.encodeIfPresent(isTemplate, forKey: "is_template")
                try values.encodeIfPresent(defaultBranch, forKey: "default_branch")
                try values.encodeIfPresent(allowSquashMerge, forKey: "allow_squash_merge")
                try values.encodeIfPresent(allowMergeCommit, forKey: "allow_merge_commit")
                try values.encodeIfPresent(allowRebaseMerge, forKey: "allow_rebase_merge")
                try values.encodeIfPresent(allowAutoMerge, forKey: "allow_auto_merge")
                try values.encodeIfPresent(deleteBranchOnMerge, forKey: "delete_branch_on_merge")
                try values.encodeIfPresent(isArchived, forKey: "archived")
                try values.encodeIfPresent(allowForking, forKey: "allow_forking")
            }
        }

        /// Delete a repository
        ///
        /// Deleting a repository requires admin access. If OAuth is used, the `delete_repo` scope is required.
        /// 
        /// If an organization owner has configured the organization to prevent members from deleting organization-owned
        /// repositories, you will get a `403 Forbidden` response.
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/repos#delete-a-repository)
        public var delete: Request<Void> {
            Request(method: "DELETE", url: path, id: "repos/delete")
        }
    }
}
