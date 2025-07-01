
output "private_sg_id" {
  value = aws_security_group.private_web_sg.id
}

output "alb_sg_id" {
  value = aws_security_group.alb_sg.id
}
