output "Pulic_ip" {
  description = "The Public Ip address of the Instance is:"
  value       = aws_instance.terraform-demo-instance.public_ip
}

output "Private_ip" {
  description = "The Private IP Address of the Instance is:"
  value       = aws_instance.terraform-demo-instance.private_ip
}
