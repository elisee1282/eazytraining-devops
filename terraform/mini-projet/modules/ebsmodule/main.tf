terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
  required_version = ">= 1.0"
}

resource "aws_kms_key" "ebs_encryption" {
  enable_key_rotation = true
}
resource "aws_ebs_volume" "projet_ebs" {
  availability_zone = var.projet_availability_zone
  size              = var.projet_size
  kms_key_id        = aws_kms_key.ebs_encryption.arn
  encrypted         = true
}

resource "aws_volume_attachment" "projet_ebs_attachment" {
  device_name  = var.projet_device_name
  volume_id    = aws_ebs_volume.projet_ebs.id
  instance_id  = var.projet_instance_id
  skip_destroy = true
}
