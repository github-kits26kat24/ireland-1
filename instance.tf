# Resource: aws_instance
# https://registry.terraform.io/providers/hashicorp/aws/3.73.0/docs/resources/instance

resource "aws_instance" "web_A" {
  ami           = "ami-0e8cb4bdc5bb2e6c0"
  instance_type = "t3.micro"
  key_name      = "kits26kat2486"
  subnet_id     = aws_subnet.public_subnet_1.id
  user_data     = <<EOF
#!/bin/bash
sudo yum update -y
sudo yum install httpd -y
sudo systemctl start httpd
EOF

  tags = {
    Name        = "Web-Server-A"
    Environment = "var.wip"
    Department  = "IT"
  }
}

resource "aws_instance" "Web_B" {
  ami           = "ami-0e8cb4bdc5bb2e6c0"
  instance_type = "t3.micro"
  key_name      = "kits26kat2486"
  subnet_id     = aws_subnet.public_subnet_2.id
  user_data     = <<EOF
#!/bin/bash
sudo yum update -y
sudo yum install httpd -y
sudo systemctl start httpd
EOF

  tags = {
    Name        = "Web-Server-B"
    Environment = "wip"
    Department  = "NHS"
  }
}

resource "aws_instance" "Tomcat-App-Server-1" {
  ami           = "ami-0e8cb4bdc5bb2e6c0"
  instance_type = "t3.micro"
  key_name      = "kits26kat2486"
  subnet_id     = aws_subnet.private_subnet_3.id
  user_data     = <<EOF
#!/bin/bash
sudo yum install tomcat  -y
sudo yum tomcat-webapps.noarch -y
sudo yum tomcat-admin-webapps.noarch -y
sudo yum install tomcat7-docs -y
# Restart
sudo /etc/init.d/tomcat7 restart -y
sudo systemctl start tomcat -y
sudo systemctl enable tomcat -y
# Stop
sudo /etc/init.d/tomcat7 stop -y
EOF

  tags = {
    Name        = "Tomcat-Server-A"
    Environment = "wip"
    Department  = "Agriculture"
  }
}

resource "aws_instance" "Tomcat-App-Server-2" {
  ami           = "ami-0e8cb4bdc5bb2e6c0"
  instance_type = "t3.micro"
  key_name      = "kits26kat2486"
  subnet_id     = aws_subnet.private_subnet_4.id
    user_data     = <<EOF
#!/bin/bash
sudo yum install tomcat  -y
sudo yum tomcat-webapps.noarch -y
sudo yum tomcat-admin-webapps.noarch -y
sudo yum install tomcat7-docs -y
# Restart
sudo /etc/init.d/tomcat7 restart -y
sudo systemctl start tomcat -y
sudo systemctl enable tomcat -y
# Stop
sudo /etc/init.d/tomcat7 stop -y
EOF

  tags = {
    Name        = "Tomcat-Server-B"
    Environment = "wip"
    Department  = "Hydrid"
  }
}