# https://registry.terraform.io/providers/hashicorp/aws/3.73.0/docs/resources/vpc

resource "aws_vpc" "kay2" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "kay2"
  }
}

output "Vpc_id" {
  value = aws_vpc.kay2.id
}
