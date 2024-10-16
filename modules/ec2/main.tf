resource "aws_instance" "web" {
  count = length(var.subnets_id)
  ami = "ami-0005e0cfe09cc9050"
  instance_type = "t2.micro"
  associate_public_ip_address = true
  vpc_security_group_ids = [var.sg_id]
  subnet_id = var.subnets_id[count.index]
  availability_zone = data.aws_availability_zones.available.names[count.index]

  tags = {
    Name = var.instanceNames[count.index]
  }
}