// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.Repos.WithOwner.WithRepo.Pulls.WithPullNumber.Reviews {
    public func reviewID(_ reviewID: Int) -> WithReviewID {
        WithReviewID(path: "\(path)/\(reviewID)")
    }

    public struct WithReviewID {
        /// Path: `/repos/{owner}/{repo}/pulls/{pull_number}/reviews/{review_id}`
        public let path: String

        /// Get a review for a pull request
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/pulls#get-a-review-for-a-pull-request)
        public var get: Request<OctoKit.PullRequestReview> {
            Request(method: "GET", url: path, id: "pulls/get-review")
        }

        /// Update a review for a pull request
        ///
        /// Update the review summary comment with new text.
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/pulls#update-a-review-for-a-pull-request)
        public func put(body: String) -> Request<OctoKit.PullRequestReview> {
            Request(method: "PUT", url: path, body: ["body": body], id: "pulls/update-review")
        }

        /// Delete a pending review for a pull request
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/pulls#delete-a-pending-review-for-a-pull-request)
        public var delete: Request<OctoKit.PullRequestReview> {
            Request(method: "DELETE", url: path, id: "pulls/delete-pending-review")
        }
    }
}
