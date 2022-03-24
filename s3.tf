#Terraform state will be stored in S3
resource "aws_s3_bucket" "project02" {
  bucket = "kayproject2"

  tags = {
    Name        = "Kay-Assignment2"
    Environment = "Department"
    Department  = "Environment"
  }
}

