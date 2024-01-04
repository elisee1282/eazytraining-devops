variable "projet_common_tag" {
  type        = string
  description = "common tag for all resources"
}

variable "projet_instance_type" {
  type        = string
  description = "EC2 instance type"
}

variable "projet_key_file" {
  type        = string
  description = "key file name"
}

variable "projet_sg" {
  type        = string
  description = "security group ID"
}
