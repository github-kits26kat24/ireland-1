# https://registry.terraform.io/providers/hashicorp/aws/3.73.0/docs/resources/subnet

resource "aws_subnet" "public_subnet_1" {
  vpc_id     = aws_vpc.project03.id
  cidr_block = "10.0.1.0/24"

  map_public_ip_on_launch = "true"
  # AZ for the subnet.
  availability_zone = "eu-west-1a"
  tags = {
    Name = "Kay_Public_Subnet_1"
  }
}

resource "aws_subnet" "public_subnet_2" {
  vpc_id                  = aws_vpc.project03.id
  cidr_block              = "10.0.2.0/24"
  map_public_ip_on_launch = "true"
  # AZ for the subnet.
  availability_zone = "eu-west-1b"
  tags = {
    Name = "Kay_Public_Subnet_2"
  }
}

resource "aws_subnet" "private_subnet_3" {
  vpc_id     = aws_vpc.project03.id
  cidr_block = "10.0.3.0/24"
  # AZ for the subnet.
  availability_zone = "eu-west-1a"

  tags = {
    Name = "Kay_Private_Subnet_1"
  }
}

resource "aws_subnet" "private_subnet_4" {
  vpc_id     = aws_vpc.project03.id
  cidr_block = "10.0.4.0/24"
  # AZ for the subnet.
  availability_zone = "eu-west-1b"

  tags = {
    Name = "Kay_Private_Subnet_2"
  }
}

