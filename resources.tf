# Protect the master branch of the foo repository. Additionally, require that
# the "ci/travis" context to be passing and only allow the engineers team merge
# to the branch.
resource "github_branch_protection" "develop" {
  repository     = "demo-repo-2"
  branch         = "develop"
  enforce_admins = true


  required_pull_request_reviews {
    dismiss_stale_reviews = true
    required_approving_review_count = 2
  }
}


