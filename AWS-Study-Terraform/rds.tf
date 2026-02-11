resource "aws_db_instance" "aws_study_rds" {
  identifier = "aws-study-rds"

  engine         = "mysql"
  engine_version = "8.0.41"

  instance_class    = "db.t4g.micro"
  allocated_storage = 20
  storage_type      = "gp2"

  port = 3306

  db_name  = "awsstudy"
  username = "root"
  password = "rootroot"

  backup_retention_period = 1

  allow_major_version_upgrade = false
  auto_minor_version_upgrade  = true

  db_subnet_group_name   = aws_db_subnet_group.aws_study_db_subnet_group.name
  vpc_security_group_ids = [aws_security_group.sg-rds.id]

  tags = {
    Name = "aws-study-rds"
  }
}