resource "aws_subnet" "subnet_public"{
 cidr_block = "10.0.1.0/24"
 vpc_id = aws_vpc.aws_aka.id
 map_public_ip_on_launch = true
 availability_zone = "us-east-1a"

 tags = {
   Name = "Subnet public"
 }
}
