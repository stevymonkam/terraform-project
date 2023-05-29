resource "aws_ebs_volume" "myebsvolume" {
  availability_zone = var.AZ
  size              = var.volume_size
  tags = {
    Name = var.volume_name
  }
}
