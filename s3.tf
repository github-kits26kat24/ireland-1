#Terraform state will be stored in S3
resource "aws_s3_bucket" "project03" {
  bucket = "bucketproject03"

  tags = {
    Name        = "Kay-Assignment03"
    Environment = "Department"
    Department  = "Environment"
  }
}

