resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.aws_aka.id

  tags = {
    Name = "internet gateway"
 }
}
