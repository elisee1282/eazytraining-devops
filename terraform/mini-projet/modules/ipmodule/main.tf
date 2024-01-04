terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
  required_version = ">= 1.0"
}

resource "aws_eip" "projet_eip" {
  domain   = "vpc"
  instance = var.projet_instance_id
}
