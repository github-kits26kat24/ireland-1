# Resource: aws_instance
# https://registry.terraform.io/providers/hashicorp/aws/3.73.0/docs/resources/instance

resource "aws_instance" "web_A" {
  ami           = "ami-048be0ea83345e4c1"
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
    Name        = "Kay_1st_Instance_Web"
    Environment = "Technology"
    Department  = "IT"
  }
}

resource "aws_instance" "Web_B" {
  ami           = "ami-048be0ea83345e4c1"
  instance_type = "t3.micro"
  key_name      = "kits26kat2486"
  subnet_id     = aws_subnet.public_subnet_2.id
  user_data     = <<EOF
#!/bin/bash
sudo yum update -y
sudo yum install python-3 -y
EOF

  tags = {
    Name        = "Kay_2nd_Instance_Python"
    Environment = "Health"
    Department  = "NHS"
  }
}

resource "aws_instance" "Tomcat-App-Server-1" {
  ami           = "ami-048be0ea83345e4c1"
  instance_type = "t3.micro"
  key_name      = "kits26kat2486"
  subnet_id     = aws_subnet.private_subnet_3.id
  user_data     = <<EOF
#!/bin/bash
sudo apt-get update -y
sudo apt-get install tomcat  -y
sudo apt-get tomcat-webapps.noarch -y
sudo apt-get tomcat-admin-webapps.noarch -y
sudo apt-get install tomcat7-docs -y
# Restart
sudo /etc/init.d/tomcat7 restart -y

# Stop
sudo /etc/init.d/tomcat7 stop -y
EOF

  tags = {
    Name        = "Kay_3rd_Instance_Tomcat"
    Environment = "Goverment"
    Department  = "Agriculture"
  }
}

resource "aws_instance" "Tomcat-App-Server-2" {
  ami           = "ami-048be0ea83345e4c1"
  instance_type = "t3.micro"
  key_name      = "kits26kat2486"
  subnet_id     = aws_subnet.private_subnet_4.id
  user_data     = <<EOF
#!/bin/bash
sudo apt-get update -y
sudo apt-get install tomcat  -y
sudo apt-get tomcat-webapps.noarch -y
sudo apt-get tomcat-admin-webapps.noarch -y
sudo apt-get install tomcat7-docs -y
# Restart
sudo /etc/init.d/tomcat7 restart -y

# Stop
sudo /etc/init.d/tomcat7 stop -y
EOF

  tags = {
    Name        = "Kay_4th_Instance_Tomcat"
    Environment = "Authomobile"
    Department  = "Hydrid"
  }
}