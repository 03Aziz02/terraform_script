resource "aws_subnet" "private-subnet2" {
  vpc_id                  = aws_vpc.aziz.id
  cidr_block              = "10.0.4.0/24"
  map_public_ip_on_launch = false
  availability_zone       = "us-east-1b"

  tags = {
    Name = "private-subnet2"
  }
}
