module "nat_gateway" {
  source                   = "./nat-resource"
  public_subnet_id         = module.vpc.public_subnet_id
  project = var.project
}
module "vpc" {
  source               = "./vpc-resource"
  vpc_cidr             = var.vpc_cidr
  public_subnet_cidr   = var.public_subnet_cidr
  public_subnet_cidr_1 = var.public_subnet_cidr_1
  private_subnet_cidr  = var.private_subnet_cidr
  availability_zone    = var.availability_zone
  nat_gateway_id       = module.nat_gateway.nat_gateway_id
}
