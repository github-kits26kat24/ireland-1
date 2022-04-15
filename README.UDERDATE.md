
#!/bin/bash
sudo yum update -y
sudo yum install httpd -y
sudo systemctl start httpd

#!/bin/bash
sudo yum install git
#!/bin/bash
sudo yum search java | grep openjdk -y
sudo yum install java-1.8.0-openjdk-headless-debug.x86_64 -y

#!/bin/bash
sudo wget http://repos.fedorapeople.org/repos/dchen/apache-maven/epel-apache-maven.repo -O /etc/yum.repos.d/epel-apache-maven.repo
sudo sed -i s/$releasever/6/g /etc/yum.repos.d/epel-apache-maven.repo
sudo yum install -y apache-maven