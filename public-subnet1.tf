resource "aws_subnet" "public-subnet1" {
  vpc_id     = aws_vpc.aziz.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "public-subnet1"
  }
}
