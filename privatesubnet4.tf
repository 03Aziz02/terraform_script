resource "aws_subnet" "privatesubnet4" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.6.0/24"

  tags = {
    Name = "privatesubnet4"
  }
}
