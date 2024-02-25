resource "aws_db_subnet_group" "rds-subnet" {
  name       = "rds-subnet"
  subnet_ids = [aws_subnet.private-subnet1.id, aws_subnet.private-subnet2.id]

  tags = {
    Name = "My DB subnet group"
  }
}

resource "aws_db_instance" "rds-subnet" {
  allocated_storage      = 10
  engine                 = "mysql"
  db_subnet_group_name   = aws_db_subnet_group.rds-subnet.id
  engine_version         = "8.0.35"
  instance_class         = "db.t2.micro"
  multi_az               = true
  username               = "admin"
  password               = "aziz1234"
  skip_final_snapshot    = true
  vpc_security_group_ids = [aws_security_group.db-sg.id]
}
