user_data     = <<EOF
#!/bin/bash
sudo apt-get install git
EOF

user_data     = <<EOF
#!/bin/bash
curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -
sudo apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"
sudo apt-get update && sudo apt-get install terraform
EOF

user_data     = <<EOF
#!/bin/bash
sudo yum update -y
sudo yum install httpd -y
sudo systemctl start httpd
EOF

user_data     = <<EOF
#!/bin/bash
sudo yum install git
#!/bin/bash
sudo yum search java | grep openjdk -y
sudo yum install java-1.8.0-openjdk-headless-debug.x86_64 -y
EOF

user_data     = <<EOF
#!/bin/bash
sudo wget http://repos.fedorapeople.org/repos/dchen/apache-maven/epel-apache-maven.repo -O /etc/yum.repos.d/epel-apache-maven.repo
sudo sed -i s/$releasever/6/g /etc/yum.repos.d/epel-apache-maven.repo
sudo yum install -y apache-maven
EOF

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