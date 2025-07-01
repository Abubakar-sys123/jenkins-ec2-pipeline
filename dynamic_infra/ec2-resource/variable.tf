variable "ami_id" {}
# variable "instance_type" {}
variable "key_name" {}
variable "private_subnet_id" {}
variable "private_web_sg" {}
variable "aws_region" {
  type = string
}
variable "ami_type" {
  type = string
}
variable "instance_type" {
  type = string
}

variable "user_data" {
  description = "User data script based on ami_type"
  type        = string
}
variable "private_ip" {
  type        = string
  description = "Static private IP for EC2"
}
