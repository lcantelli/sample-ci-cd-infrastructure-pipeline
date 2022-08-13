terraform {
  backend "s3" {
    bucket = "sample-ci-cd-infrastructure-pipeline"
    key = "terraform-state"
    region = "us-east-1"
  }
}