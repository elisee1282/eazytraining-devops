terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}
terraform {
  required_version = ">= 1.0"
}

module "module_sg" {
  source    = "./modules/sgmodule"
  projet_sg = var.projet_sg
}


module "module_ec2" {
  source               = "./modules/ec2module"
  projet_common_tag    = var.projet_common_tag
  projet_instance_type = var.projet_instance_type
  projet_key_file      = var.projet_key_file
  projet_sg            = module.module_sg.output_sg
}


module "module_ip" {
  source             = "./modules/ipmodule"
  projet_instance_id = module.module_ec2.output_ec2
}

module "module_ebs" {
  source                   = "./modules/ebsmodule"
  projet_instance_id       = module.module_ec2.output_ec2
  projet_device_name       = var.projet_device_name
  projet_availability_zone = var.projet_availability_zone
  projet_size              = var.projet_size

}
