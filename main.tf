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
   cidr_block = var.network_adr_vpc
   tags = {
    env      = "test"
    Name = var.vpc_name
  }	
}
