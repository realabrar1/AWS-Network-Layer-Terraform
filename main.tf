// Configuring Virtual Private Cloud
module "vpc" {
  source = "./modules/vpc"
  vpc_cidr = var.vpc_cidr
  subnet_cidr = var.subnet_cidr
}

// Security Group for the instance
module "sg" {
  source = "./modules/sg"
  vpc_id = module.vpc.vpc_id
}

// Configuring the EC2 instance
module "ec2" {
  source = "./modules/ec2"
  sg_id = module.sg.sg_id
  subnets_id = module.vpc.subnet_ids
  instanceNames = var.instanceNames
}

// Configuring Application Load Balancer
module "alb" {
  source = "./modules/alb"
  sg_id = module.sg.sg_id
  subnets = module.vpc.subnet_ids
  vpc_id = module.vpc.vpc_id
  ec2_id = module.ec2.instances
}