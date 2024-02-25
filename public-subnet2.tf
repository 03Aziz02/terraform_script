resource "aws_subnet" "public-subnet2" {
  vpc_id                  = aws_vpc.aziz.id
  cidr_block              = "10.0.2.0/24"
  map_public_ip_on_launch = true
  availability_zone       = "us-east-1b"
  
  tags = {
    Name = "public-subnet2"
  }
}
