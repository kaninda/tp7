terraform {
  required_providers {
	aws = {
	   source = "hashicorp/aws"
	   version = "~> 3.27"
	 }
  }
}

provider "aws" {
  access_key = "AKIAJ2CJNDCL22SVZQ6A"
  secret_key = "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"
  profile = "default"
  region  = var.region
} 

resource "aws_vpc" "aws_aka"{
   cidr_block = var.vpc_adr
   enable_dns_hostnames = var.enable_dns_hostnames
   enable_dns_support = var.enable_dns_support
   tags = {
    Name = var.vpc_name
  }	
}

resource "aws_subnet" "subnet_public"{
 cidr_block = "10.0.1.0/24"
 vpc_id = aws_vpc.aws_aka.id
 map_public_ip_on_launch = true
 availability_zone = "us-west-2a" 

 tags = {
   Name = "Subnet public"
 }
}

resource "aws_subnet" "subnet_private"{
 cidr_block = "10.0.2.0/24"
 vpc_id = aws_vpc.aws_aka.id
 map_public_ip_on_launch = false
 availability_zone = "us-west-2a"

 tags = {
   Name = "Subnet private"
 }
}

resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.aws_aka.id

  tags = {
    Name = "internet gateway"
 }  
}

