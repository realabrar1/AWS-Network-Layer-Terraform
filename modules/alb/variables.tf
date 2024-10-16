variable "sg_id" {
  description = "Security Group Id for Application Load Balancers"
  type = string
}

variable "subnets" {
  description = "Subnet Id for Application Load Balncers"
  type = list(string)
}

variable "vpc_id" {
  description = "VPC Id for Application Load Balancers"
  type = string
}

variable "ec2_id" {
  description = "EC2 Instance Id for Load Balancers"
  type = list(string)
}