terraform {
  required_providers {
	aws = {
	   source = "hashicorp/aws"
	   version = "~> 3.27"
	 }
  }
}

provider "aws" {
  access_key = "AKIAIAK3W6GD2HTEFYRQ"
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

