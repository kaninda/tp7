variable "region" {
 default = "us-east-1"
}

variable "vpc_adr" {
 default = "10.0.0.0/16"
}

variable "vpc_name" {
 default = "aws_vpc_name"
}

variable "subnet_adr" {
 default = "10.0.0.0/24"
}

variable "subnet_name" {
 default = "aws_subnet_name"
}

variable "enable_dns_hostnames" {
  type        = bool
  default     = true
}

variable "enable_dns_support" {
  type        = bool
  default     = true
}

variable "enable_classiclink" {
  type        = bool
  default     = false
}

variable "instance_type" {
   default   = "t2.micro"
}

variable "ami_id" {
    default = {
    us-east-1    = "ami-035b3c7efe6d061d5"
    eu-west-2    = "ami-132b3c7efe6sdfdsfd"
    eu-central-1 = "ami-9787h5h6nsn75gd33"
  }
}

variable "key_name" {
  default = "ec2-tp"
}

