terraform {
  backend "s3" {
      bucket = "wip-project03"
      region = "eu-west-1"
  }
}