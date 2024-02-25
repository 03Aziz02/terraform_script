resource "aws_subnet" "public-subnet2" {
  vpc_id     = aws_vpc.aziz.id
  cidr_block = "10.0.2.0/24"

  tags = {
    Name = "public-subnet2"
  }
}
