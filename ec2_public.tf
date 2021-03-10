resource "aws_instance" "web" {
  ami           = lookup(var.ami_id, var.region)
  instance_type = var.instance_type

  subnet_id     = aws_subnet.subnet_public.id
 
  vpc_security_group_ids = [aws_security_group.allow_ssh_http.id]

    user_data = <<EOF
    #! /bin/bash
                sudo yum update -y
    sudo yum install -y httpd.x86_64
    sudo service httpd start
    sudo service httpd enable
    echo "<h1>Deployed via Terraform</h1>" | sudo tee /var/www/html/index.html
     EOF

  tags = {
    Name = "Ec2-with-VPC"
  }
}
