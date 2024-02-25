resource "aws_subnet" "private-subnet1" {
  vpc_id     = aws_vpc.aziz.id
  cidr_block = "10.0.3.0/24"

  tags = {
    Name = "private-subnet1"
  }
}
