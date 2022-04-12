resource "aws_db_instance" "Tomcat-App-Server-1" {
  allocated_storage    = 10
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.t3.micro"
  name                 = "mydb"
  username             = "kitkat"
  password             = "kits26kat2486!"
  parameter_group_name = "default.mysql5.7"
  skip_final_snapshot  = true
  db_subnet_group_name = aws_db_subnet_group.private_subnet_3.name
}
resource "aws_db_subnet_group" "private_subnet_3" {
  name       = "assignment03"
  subnet_ids = [aws_subnet.private_subnet_3.id]
  tags = {
    Name = "My_DB_subnet_group_01"
  }
}

resource "aws_db_instance" "Tomcat-App-Server-2" {
  allocated_storage    = 10
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.t3.micro"
  name                 = "mydb"
  username             = "kitkat"
  password             = "kits26kat2486!"
  parameter_group_name = "default.mysql5.7"
  skip_final_snapshot  = true
  db_subnet_group_name = aws_db_subnet_group.private_subnet_4.name
  }
resource "aws_db_subnet_group" "private_subnet_4" {
  name       = "assignment04"
  subnet_ids = [aws_subnet.private_subnet_4.id]
  tags = {
    Name = "My_DB_subnet_group_02"
  }
}