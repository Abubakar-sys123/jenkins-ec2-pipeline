variable "vpc_cidr" {
  description = "asfas"
  default = "10.0.0.0/16"
  type = string
}
variable "public_subnet_cidr" {
  description = "CIDR block for the public subnet"
  default= "10.0.112.0/24"
  type = string
}
variable "public_subnet_cidr_1" {
  description = "CIDR block for the public subnet"
  default= "10.0.115.0/24"
  type = string
}
variable "availability_zone" {
  description = "Availability Zone for the subnet"
  type        = list(string)
  default= ["us-east-1a", "us-east-1b"]
}
variable "aws_region" {
  description = "AWS region to deploy resources"
  type        = string
  default     ="us-east-1"
}
}
variable "private_subnet_cidr" {
  description = "CIDR block for the private subnet"
  default     = "10.0.221.0/24"
  type        = string
}

variable "project" {
  description = "Project name to tag ALB"
  default     = "myapp"
  type        = string
}
