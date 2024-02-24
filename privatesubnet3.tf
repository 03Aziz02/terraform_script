resource "aws_subnet" "privatesubnet3" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.5.0/24"

  tags = {
    Name = "privatesubnet3"
  }
}
