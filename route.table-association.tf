# Resource: aws_route_table_association
# https://registry.terraform.io/providers/hashicorp/aws/3.73.0/docs/resources/route_table_association

# Provides a resource to create an association between a route table and a subnet.
# a route table and an internet gateway or virtual private gateway.
# Route_table_id - (REQUIRED) The ID of the routing table to associate with.

resource "aws_route_table_association" "ass1" {
  # The subnet ID to create an association. Conflicts with
  subnet_id = aws_subnet.public_subnet_1.id

  # The ID of the routing table to associate with.
  route_table_id = aws_route_table.public.id
}

resource "aws_route_table_association" "ass2" {
  # The subnet ID to create an association. Conflicts with
  subnet_id = aws_subnet.public_subnet_2.id

  # The ID of the routing table to associate with.
  route_table_id = aws_route_table.public.id
}

# resource "aws_route_table_association" "ass3" {
#   # The subnet ID to create an association. Conflicts with
#   subnet_id = aws_subnet.private_subnet_3.id

#   # The ID of the routing table to associate with.
#   route_table_id = aws_route_table.private1.id
# }

# resource "aws_route_table_association" "ass4" {
#   # The subnet ID to create an association. Conflicts with
#   subnet_id = aws_subnet.private_subnet_4.id

#   # The ID of the routing table to associate with.
#   route_table_id = aws_route_table.private2.id
# }