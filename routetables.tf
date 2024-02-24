resource "aws_route_table" "route" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gateway.id
  }

  tags = {
    Name = "route_to_internet"
  }
}

resource "aws_route_table_association" "route-1" {
  subnet_id      = aws_subnet.publicsubnet1.id
  route_table_id = aws_route_table.route.id
}

resource "aws_route_table_association" "route-2" {
  subnet_id      = aws_subnet.publicsubnet2.id
  route_table_id = aws_route_table.route.id
}
