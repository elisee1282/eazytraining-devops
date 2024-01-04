terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
  required_version = ">= 1.0"
}

data "aws_ami" "latest_ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-bionic-18.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"]
}

resource "aws_instance" "projet_ec2" {
  ami                    = data.aws_ami.latest_ubuntu.id
  instance_type          = var.projet_instance_type
  key_name               = var.projet_key_file
  vpc_security_group_ids = [var.projet_sg]
  ebs_optimized = true 
  metadata_options {
    http_tokens = "required"
  }
  root_block_device {
    encrypted             = true
    delete_on_termination = true
    volume_size           = "20"
    volume_type           = "gp2"
  }
  ebs_block_device {
    delete_on_termination = true
    device_name           = "/dev/sdb"
    volume_type           = "gp2"
    encrypted             = true
  }
  tags = {
    Name = var.projet_common_tag
  }
}
