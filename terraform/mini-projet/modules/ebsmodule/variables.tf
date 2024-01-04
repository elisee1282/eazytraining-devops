variable "projet_instance_id" {
  type        = string
  description = "Instance ID"
}

variable "projet_size" {
  type    = number
  default = 40
}

variable "projet_availability_zone" {
  type        = string
  description = "Availability zone"
}

variable "projet_device_name" {
  type        = string
  description = "Device name"
}
