data "aws_ami" "instance_store_ami" {
  most_recent = true
  owners      = ["099720109477"]

  filter {
    name = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-bionic-18.04-amd64-server-*"]
  }
}
resource "aws_instance" "myec2" {
  ami           = data.aws_ami.instance_store_ami.id
  instance_type = var.instance_type
  key_name      = var.key_name
  availability_zone = var.AZ
  security_groups = ["${var.sg_name}"]


   provisioner "remote-exec" {
     inline = [
       "sudo apt update -y",
       "sudo apt install -y nginx",
       "sudo systemctl start nginx",
       "sudo systemctl enable nginx"

     ]

   connection {
     type = "ssh"
     user = "ubuntu"
     private_key = file("C:/Users/stevy/labs/${var.ssh_key}.pem")
     host = self.public_ip
    
    // host = "${aws_instance.myec2.public_ip}"

   }
   }


  tags = {
    Name = var.instance_name
  }

  root_block_device {
    delete_on_termination = true
  }
}


