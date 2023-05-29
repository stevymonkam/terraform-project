
output "volume_id" {
  description = "ID du volume EBS"
  value       = aws_ebs_volume.myebsvolume.id
}
