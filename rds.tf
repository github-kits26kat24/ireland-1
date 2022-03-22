resource "aws_db_instance" "Tomcat-App-Server-1" {
  allocated_storage    = 10
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.t3.micro"
  name                 = "mydb"
  username             = "kitkat"
  password             = "kits26kat24!"
  parameter_group_name = "default.mysql5.7"
  skip_final_snapshot  = true
  db_subnet_group_name = aws_db_subnet_group.project2rds.name
}
resource "aws_db_subnet_group" "project2rds" {
  name       = "project2rds"
  subnet_ids = [aws_subnet.private_subnet_3.id]

  tags = {
    Name = "My DB subnet group"
  }
}