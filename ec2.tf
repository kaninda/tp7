resource "aws_instance" "web" {
  ami           = lookup(var.ami_id, var.region)
  instance_type = var.instance_type

  subnet_id     = aws_subnet.subnet_public.id

  tags = {
    Name = "Ec2-with-VPC"
  }
}