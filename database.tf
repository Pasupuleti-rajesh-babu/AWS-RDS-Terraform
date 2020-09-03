resource "aws_db_instance" "mydb" {

  allocated_storage    = 20
  identifier           = "database-instance16"
  storage_type         = "gp2"
  engine               = "mysql"
  engine_version       = "5.7.30"
  instance_class       = "db.t2.micro"
  name                 = "mydatabase"
  username             = "rajesh"
  password             = "rajesh2020"
  iam_database_authentication_enabled = true
  parameter_group_name = "default.mysql5.7"
  skip_final_snapshot  = true
  publicly_accessible = true
  tags = {
    Name = "sqldb"
  }
  
}
