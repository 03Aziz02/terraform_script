resource "aws_subnet" "private-subnet4" {
  vpc_id     = aws_vpc.aziz.id
  cidr_block = "10.0.6.0/24"

  tags = {
    Name = "private-subnet4"
  }
}
