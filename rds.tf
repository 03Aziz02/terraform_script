resource "aws_db_subnet_group" "rds-sub" {
  name       = "rds-sub"
  subnet_ids = [aws_subnet.private-subnet3.id, aws_subnet.private-subnet4.id]

  tags = {
    Name = "My DB subnet group"
  }
}

resource "aws_db_instance" "rds" {
  allocated_storage      = 10
  engine                 = "mysql"
  db_subnet_group_name   = aws_db_subnet_group.rds-sub.name
  engine_version         = "8.0.35"
  instance_class         = "db.t2.micro"
  multi_az               = true
  username               = "admin"
  password               = "aziz1234"
  skip_final_snapshot    = true
  vpc_security_group_ids = [aws_security_group.db-sg.id]
}
