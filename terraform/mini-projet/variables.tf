#ce Fichiern'est pas a modifier

variable "aws_region" {
  type    = string
  default = "us-east-1"
}

variable "projet_availability_zone" {
  type        = string
  description = "Availability zone"
}

variable "projet_device_name" {
  type        = string
  description = "Device name"
}
variable "aws_region" {
  type    = string
  default = "us-east-1"
}

variable "projet_sg" {
  type    = string
  default = "projet_sg"
}

variable "projet_common_tag" {
  type = string
}

variable "projet_key_file" {
  type = string
}

variable "projet_instance_type" {
  type = string
}

variable "projet_size" {
  type    = number
  default = 40
}
variable "projet_" {

}
