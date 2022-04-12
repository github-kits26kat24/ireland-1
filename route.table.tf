# A route Is Used To Determine Where Network Traffic From The Subnet or Gateway Is Directed.

#Resource: aws_route_table
# https://registry.terraform.io/providers/hashicorp/aws/3.73.0/docs/resources/route_table

resource "aws_route_table" "public" {
  #The Vpc Id
  vpc_id = aws_vpc.project03.id

  route {
    #The CIDR Block Of The Route.
    cidr_block = "0.0.0.0/0"

    # Gateway_ID Identifier Of A Vpc Internet Gateway Or A Vitual Private Gateway.

    gateway_id = aws_internet_gateway.Project03.id
  }

  # A Map Of Tags To Assign To The Resources.
  tags = {
    Name = "Kay-Public"
  }
}
# resource "aws_route_table" "private1" {
#   #The Vpc Id
#   vpc_id = aws_vpc.main.id

#   route {
#     #The CIDR Block Of The Route.
#     cidr_block = "0.0.0.0/0"

#     # Nat_Gateway_ID Identifier Of A VPC NAT Gateway.
#   #  nat_gateway_id = aws_nat_gateway.gw1.id
#   }

#   # A Map Of Tags To Assign To The Resources.
#   tags = {
#     Name = "private1"
#   }
# }

# resource "aws_route_table" "private2" {
#   #The Vpc Id
#   vpc_id = aws_vpc.main.id

#   route {
#     #The CIDR Block Of The Route.
#     cidr_block = "0.0.0.0/0"

#     # Nat_Gateway_ID Identifier Of A VPC NAT Gateway.
#    # nat_gateway_id = aws_nat_gateway.gw2.id
#   }

#   # A Map Of Tags To Assign To The Resources.
#   tags = {
#     Name = "private2"
#   }
# }