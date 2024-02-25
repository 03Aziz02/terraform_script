resource "aws_subnet" "private-subnet3" {
  vpc_id     = aws_vpc.aziz.id
  cidr_block = "10.0.5.0/24"

  tags = {
    Name = "private-subnet3"
  }
}
