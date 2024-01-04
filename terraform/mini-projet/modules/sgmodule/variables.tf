variable "projet_port" {
  type    = list(number)
  default = [22, 80, 443]
}
variable "projet_sg" {
  type        = string
  description = "security group for all infrastructure"
  default     = "projet_sg"
}
