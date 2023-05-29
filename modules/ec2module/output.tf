output "public_ip" {
  description = "Adresse IP publique de l'instance EC2"
  value       = aws_instance.myec2.public_ip
}

output "instance_id" {
  description = "ID de l'instance EC2"
  value       = aws_instance.myec2.id
}

output "output_ec2_az" {
  value       = aws_instance.myec2.availability_zone
}