resource "aws_subnet" "privatesubnet1" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.4.0/24"

  tags = {
    Name = "privatesubnet2"
  }
}
