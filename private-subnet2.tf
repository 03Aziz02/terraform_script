resource "aws_subnet" "private-subnet2" {
  vpc_id     = aws_vpc.aziz.id
  cidr_block = "10.0.4.0/24"

  tags = {
    Name = "private-subnet2"
  }
}
