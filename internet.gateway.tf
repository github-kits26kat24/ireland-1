# Resource: aws_internet_gateway
# https://registry.terraform.io/providers/hashicorp/aws/3.73.0/docs/resources/internet_gateway

resource "aws_internet_gateway" "Project2" {

  #The Vpc ID To Create in.
  vpc_id = aws_vpc.main.id

  # A Map Of Tags To Assign To The Resource.
  tags = {
    Name = "main1"
  }
}
