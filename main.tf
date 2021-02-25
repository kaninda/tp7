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
   tags = {
    env      = "test"
    Name = var.vpc_name
  }	
}

resource "aws_subnet" "subnet_aka_1"{
 cidr_block = var.subnet_adr
 vpc_id = aws_vpc.aws_aka.id
 availability_zone = "eu-west-3a" 

 tags = {
   env = "test"
   Name = var.subnet_name
 }
}

