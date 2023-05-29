variable "volume_name" {
  description = "Nom du volume EBS"
  default     = "aws_volume"
}

variable "volume_size" {
  description = "Taille du volume EBS (en Go)"
  type        = number
  default     = 2
}

variable "AZ" {
  type        = string
  default     = "us-east-1b"
}