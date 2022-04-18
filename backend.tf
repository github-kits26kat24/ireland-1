terraform {
  backend "s3" {
      bucket = "bucketproject03"
      region = "eu-west-1"
  }
}