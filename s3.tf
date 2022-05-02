#Terraform state will be stored in S3
resource "aws_s3_bucket" "project03" {

  bucket = "project03"

  tags = {
    Name = "wip"
  }
}

