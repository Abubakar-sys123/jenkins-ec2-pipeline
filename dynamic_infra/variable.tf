variable "project" {
  description = "Project name to tag ALB"
  default     = "myapp"
  type        = string
}
variable "user_data" {
  description = "User data script based on ami_type"
  type        = string
}
variable "instance_type" {
  description = "EC2 instance type"
  type        = string
}

variable "key_name" {
  description = "Name of the existing EC2 key pair"
  default     = "key.pem"
  type        = string
}
variable "aws_region" {
  description = "AWS region to deploy resources"
  default     = "us-east-1"
  type        = string
}
variable "ami_type" {
  type        = string
  description = "AMI type (ubuntu or amazon-linux)"
}
variable "private_ip" {
  type        = string
  description = "Static private IP for EC2"
}
variable "ami_id" {
  description = "AMI ID for the EC2 instance"
  type        = string
}
variable "alb_sg_name" {
  description = "Name of the security group"
  default     = "alb_securit_group"
  type        = string
}
variable "private_web_sg" {
  type = string
  description = "sg for ec2 private"
  default = "ec2_private_sg"
}
variable "ingress_cidr" {
  description = "CIDR block allowed for ingress traffic"
  default     = "0.0.0.0/0"
  type        = string
}
