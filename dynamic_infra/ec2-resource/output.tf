output "private_ec2_instance_id" {
  description = "ID of the private EC2 instance"
  value       = aws_instance.private_web_server.id
}

output "private_ec2_private_ip" {
  description = "Private IP address of the private EC2 instance"
  value       = aws_instance.private_web_server.private_ip
}

output "private_ec2_availability_zone" {
  description = "Availability zone of the private EC2 instance"
  value       = aws_instance.private_web_server.availability_zone
}


