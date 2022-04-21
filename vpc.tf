# https://registry.terraform.io/providers/hashicorp/aws/3.73.0/docs/resources/vpc

resource "aws_vpc" "project03" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "Project03"
  }
}

output "Vpc_id" {
  value = aws_vpc.project03.id
}


