output "public_ip" {
  description = "Adresse IP publique"
  value       = aws_eip.myeip.public_ip
}

output "myeip_id" {
  value       = aws_eip.myeip.id
}
