output "public_ip" {
  value = aws_instance.rhel_server_1.public_ip
}

output "private_ip" {
  value = aws_instance.rhel_server_1_private.private_ip
}