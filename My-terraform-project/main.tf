provider "aws" {
  region = "ap-south-1"
}

module "ec2_instance" {
  source              = "git::https://github.com/shivaniaswar/Terraform.git//modules/ec2_instance?ref=main"
  ami_value           = var.ami_value
  instance_type_value = var.instance_type_value
}

output "instance_public_ip" {
  value = module.ec2_instance.public-ip-address
}

