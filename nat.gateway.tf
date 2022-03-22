# # https://registry.terraform.io/providers/hashicorp/aws/3.73.0/docs/resources/nat_gateway

# # VPC NAT Gateway
# # Translate The Private IP Address To Generate The Public Address.
# # Two Nat Gateway In Different Availability Zone Incase One Breakdown.

# resource "aws_nat_gateway" "gw1" {
#   # The Allocation ID of The Elastic IP Address For The Gateway. 
#   allocation_id = aws_eip.public_subnet_1.id

#   # The Subnet ID of The Subnet In Which To Place The Gateway.

#   subnet_id = aws_subnet.public_subnet_1.id

#   # A Map Of Tags To Assign To The Resources.


#   tags = {
#     Name = "NAT 1"
#   }
# }

# resource "aws_nat_gateway" "gw2" {
#   # The Allocation ID of The Elastic IP Address For The Gateway. 
#   allocation_id = aws_eip.public_subnet_2.id

#   # The Subnet ID of The Subnet In Which To Place The Gateway.

#   subnet_id = aws_subnet.public_subnet_2.id

#   # A Map Of Tags To Assign To The Resources.


#   tags = {
#     Name = "NAT 2"
#   }
# }