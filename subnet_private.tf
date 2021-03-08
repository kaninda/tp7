resource "aws_subnet" "subnet_private"{
 cidr_block = "10.0.2.0/24"
 vpc_id = aws_vpc.aws_aka.id
 map_public_ip_on_launch = false
 availability_zone = "us-east-1a"

 tags = {
   Name = "Subnet private"
 }
}
