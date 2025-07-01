
data "aws_subnet" "private" {
  filter {
    name   = "tag:Name"
    values = ["private-subnet"]
  }
}
data "aws_subnet" "public" {
  filter {
    name   = "tag:Name"
    values = ["public-subnet"]
  }
}

data "aws_subnet" "public_1" {
  filter {
    name   = "tag:Name"
    values = ["public-subnet-1"]
  }
}
data "aws_vpc" "main" {
  filter {
    name   = "tag:Name"
    values = ["main-vpc"]
  }
}
module "ec2" {
  source             = "./ec2-resource"
  ami_id             = var.ami_id
  aws_region         = var.aws_region
  ami_type           = var.ami_type
  instance_type      = var.instance_type
  private_subnet_id = data.aws_subnet.private.id
  private_web_sg     = module.sg.private_sg_id
  key_name           = var.key_name
  private_ip         = var.private_ip
  user_data          = var.user_data
}

module "alb" {
  source              = "./alb-resource"
  project             = var.project
  alb_sg_id           = module.sg.alb_sg_id
  public_subnet_ids   = [data.aws_subnet.public.id, data.aws_subnet.public_1.id]
  vpc_id              = data.aws_vpc.main.id
  private_instance_id = module.ec2.private_ec2_instance_id  
}

module "sg" {
  source         = "./sg-resource"
  aws_vpc      = data.aws_vpc.main.id
  private_web_sg = var.private_web_sg
  ingress_cidr   = var.ingress_cidr
  alb_sg_name    = var.alb_sg_name
}
