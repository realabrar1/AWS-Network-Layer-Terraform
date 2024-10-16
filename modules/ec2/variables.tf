variable "sg_id" {
  description = "Security Group Id for the EC2 instance"
  type = string
}

variable "subnets_id" {
  description = "Subnets Id for EC2 instance"
  type = list(string)
}

variable "instanceNames"{
    description = "Names for the EC2 instances"
    type = list(string)
}