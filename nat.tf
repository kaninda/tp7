resource "aws_eip" "nat" {
  vpc      = true
}

resource "aws_nat_gateway" "nat_gw" {
  allocation_id = aws_eip.nat.id
  subnet_id     = aws_subnet.subnet_public.id
  depends_on    = [aws_internet_gateway.gw]
}

resource "aws_route_table" "route_private" {
  vpc_id = aws_vpc.aws_aka.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.nat_gw.id
  }

  tags = {
    Name = "private-route-table"
  }
}

resource "aws_route_table_association" "private_route" {
  subnet_id = aws_subnet.subnet_private.id
  route_table_id = aws_route_table.route_private.id
}

