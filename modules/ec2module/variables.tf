variable "instance_name" {
  description = "Nom de l'instance EC2"
   type        = string
   default     = "instance-ec2-stevy"
}

variable "instance_type" {
  description = "Type d'instance EC2"
  default     = "t2.micro"
}

variable "key_name" {
  description = "Nom de la paire de clés EC2"
  default     = "new-stevy"
}

variable "security_group_ids" {
  description = "Liste des IDs des groupes de sécurité"
  type        = string
  default     = "NULL"
}
variable "AZ" {
  type        = string
  default     = "us-east-1b"
}
variable "ssh_key" {
  type        = string
  default     = "new-stevy"
}
variable "sg_name" {
  type        = string
  description = "set sg name "
  default     = "NULL"
}
