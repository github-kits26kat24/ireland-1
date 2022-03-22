# Resource: aws_eip
# https://registry.terraform.io/providers/hashicorp/aws/3.73.0/docs/resources/eip

# Elastic IP resource

resource "aws_eip" "public_subnet_1" {

  # EIP may require IGW to exist prior to association. 
  # Use depends_on to set an explicit dependency on the IGW.

  depends_on = [aws_internet_gateway.Project2]
  vpc        = true
}

resource "aws_eip" "public_subnet_2" {

  # EIP may require IGW to exist prior to association. 
  # Use depends_on to set an explicit dependency on the IGW.

  depends_on = [aws_internet_gateway.Project2]
  vpc        = true
}
