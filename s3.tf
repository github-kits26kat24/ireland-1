#Terraform state will be stored in S3
resource "aws_s3_bucket" "project02" {
  bucket = "updateproject02"

  tags = {
    Name        = "Mr_D"
    Environment = "Department"
    Department  = "Environment"
  }
}

