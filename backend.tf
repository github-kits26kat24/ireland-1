terraform {
  backend "s3" {
      bucket = "kits26kat2486-terraform-state"
      region = "eu-west-1"
  }
}