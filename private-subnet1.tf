resource "aws_subnet" "private-subnet1" {
  vpc_id                  = aws_vpc.aziz.id
  cidr_block              = "10.0.3.0/24"
  map_public_ip_on_launch = false
  availability_zone       = "us-east-1a"

  tags = {
    Name = "private-subnet1"
  }
}

