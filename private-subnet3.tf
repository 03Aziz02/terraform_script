resource "aws_subnet" "private-subnet3" {
  vpc_id                  = aws_vpc.aziz.id
  cidr_block              = "10.0.5.0/24"
  map_public_ip_on_launch = false
  availability_zone       = "us-east-1a"

  tags = {
    Name = "private-subnet3"
  }
}
