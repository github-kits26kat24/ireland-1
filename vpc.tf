# https://registry.terraform.io/providers/hashicorp/aws/3.73.0/docs/resources/vpc

resource "aws_vpc" "main" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "main"
  }
}

output "Vpc_id" {
  value = aws_vpc.main.id
}
