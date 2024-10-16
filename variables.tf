variable "region" {
  description = "Denotes the region where resources are created"
  type = string
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type = string
}

variable "subnet_cidr" {
  description = "CIDR block for the subnets"
  type = list(string)
}

variable "instanceNames" {
  description = "Names for the EC2 instances"
  type = list(string)
}