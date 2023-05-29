provider "aws" {
  region     = "us-east-1"
  shared_credentials_files = ["C:/Users/stevy/labs/aws_credentials"]
}


module "sg" {
  source = "../modules/securvolume"

}

module "ebs" {
  source = "../modules/volumemodule"
}

module "eip" {
  source = "../modules/ipmodule"

}

module "ec2module" {
  source = "../modules/ec2module"
  sg_name = module.securvolume.sg_name

}

resource "aws_eip_association" "eip_ass" {
  instance_id   = module.ec2module.instance_id
  allocation_id = module.ipmodule.myeip_id

}

resource "aws_volume_attachment" "vol_att" {

  device_name = "/dev/sdh"
  volume_id   = module.volumemodule.volume_id
  instance_id = module.ec2module.instance_id

}





