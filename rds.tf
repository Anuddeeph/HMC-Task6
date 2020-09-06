provider "aws" {
  region = "ap-south-1"
  profile = "anuddeeph"
}
resource "aws_db_instance" "default" {
  allocated_storage = 20
  engine            = "mysql"
  engine_version    = "5.7.30"
  instance_class    = "db.t2.micro"
  name     = "mydb"
  username = "anup"
  password = "redhat1234"
  port     = "3306"
  parameter_group_name = "default.mysql5.7"
  publicly_accessible = true
  iam_database_authentication_enabled = true
  vpc_security_group_ids = ["sg-07aed1eec275fbfe1"]
  final_snapshot_identifier = "mydb-backup"
  skip_final_snapshot       = true
 
  tags = {
     Name = "mysql"
 }
}

