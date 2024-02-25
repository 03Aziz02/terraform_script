resource "aws_internet_gateway" "aziz-gateway" {
  vpc_id = aws_vpc.aziz.id
}
