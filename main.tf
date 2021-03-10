terraform {
  required_providers {
	aws = {
	   source = "hashicorp/aws"
	   version = "~> 3.27"
	 }
  }
}

provider "aws" {
  access_key = "AKIA2FD45UZY266VYTOF"
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

