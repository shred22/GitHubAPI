# Protect the master branch of the foo repository. Additionally, require that
# the "ci/travis" context to be passing and only allow the engineers team merge
# to the branch.
resource "github_repository" "otp-microservice" {
  name        = "otp-microservice"
  visibility  = "private"
}
