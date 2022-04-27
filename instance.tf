# Resource: aws_instance
# https://registry.terraform.io/providers/hashicorp/aws/3.73.0/docs/resources/instance

resource "aws_instance" "web_A" {
  ami           = "ami-0e8cb4bdc5bb2e6c0"
  instance_type = "t2.micro"
  key_name      = "kits26kat2486"
  subnet_id     = aws_subnet.public_subnet_1.id
  tags = {
    Name = var.environment
  }
}

# resource "aws_instance" "Web_B" {
#   ami           = "ami-0e8cb4bdc5bb2e6c0"
#   instance_type = "t2.micro"
#   key_name      = "kits26kat2486"
#   subnet_id     = aws_subnet.public_subnet_2.id
#   tags = {
#     Name        = "Web-Server-B"
#     Environment = "wip"
#     Department  = "NHS"
#   }
# }

# resource "aws_instance" "Tomcat-App-Server-1" {
#   ami           = "ami-0e8cb4bdc5bb2e6c0"
#   instance_type = "t2.micro"
#   key_name      = "kits26kat2486"
#   subnet_id     = aws_subnet.private_subnet_3.id
#   tags = {
#     Name        = "Tomcat-Server-A"
#     Environment = "wip"
#     Department  = "Agriculture"
#   }
# }

# resource "aws_instance" "Tomcat-App-Server-2" {
#   ami           = "ami-0e8cb4bdc5bb2e6c0"
#   instance_type = "t2.micro"
#   key_name      = "kits26kat2486"
#   subnet_id     = aws_subnet.private_subnet_4.id
#   tags = {
#     Name        = "Tomcat-Server-B"
#     Environment = "wip"
#     Department  = "Hydrid"
#   }
# }