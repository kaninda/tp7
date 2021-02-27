resource "aws_route_table" "route-public" {
  vpc_id = "${aws_vpc.aws_aka.id}"

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.gw.id}"
  }

  tags = {
    Name = "public-route-table-demo"
  }
}
