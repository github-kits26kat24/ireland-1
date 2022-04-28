# Resource: aws_instance
# https://registry.terraform.io/providers/hashicorp/aws/3.73.0/docs/resources/instance

resource "aws_instance" "web_A" {
  ami           = "ami-00902223dd91e78c5"
  instance_type = "t3.micro"
  key_name      = "kits26kat2486"
  subnet_id     = aws_subnet.public_subnet_1.id

  tags = {
    Name        = "Web-Server-A"
    Environment = "Prod"
  }
}

resource "aws_instance" "Web_B" {
  ami           = "ami-00902223dd91e78c5"
  instance_type = "t3.micro"
  key_name      = "kits26kat2486"
  subnet_id     = aws_subnet.public_subnet_2.id
 
  tags = {
    Name        = "Web-Server-B"
    Environment = "Prod"
  }
}

resource "aws_instance" "Tomcat-App-Server-1" {
  ami           = "ami-00902223dd91e78c5"
  instance_type = "t3.micro"
  key_name      = "kits26kat2486"
  subnet_id     = aws_subnet.private_subnet_3.id
 
  tags = {
    Name        = "Tomcat-Server-A"
    Environment = "Prod"
  }
}

resource "aws_instance" "Tomcat-App-Server-2" {
  ami           = "ami-00902223dd91e78c5"
  instance_type = "t3.micro"
  key_name      = "kits26kat2486"
  subnet_id     = aws_subnet.private_subnet_4.id

  tags = {
    Name        = "Tomcat-Server-B"
    Environment = "Prod"
  }
}