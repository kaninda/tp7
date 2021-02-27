variable "region" {
 type = "string"
 default = "us-west-2"
}

variable "vpc_adr" {
 type = "string"
 default = "10.0.0.0/16"
}

variable "vpc_name" {
 type = "string"
 default = "aws_vpc_name"
}

variable "subnet_adr" {
 type = "string"
 default = "10.0.0.0/24"
}

variable "subnet_name" {
 type = "string"
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
