variable "region" {
  description = "region to create services"
  type        = string
}
variable "access_key" {
  type = string
}
variable "secret_key" {
  type = string
}
variable "ami" {
  description = "Image ID for Ec2 instances"
  type        = string
}
variable "instance_type" {
  description = "Instance type name for Ec2 instances"
  type        = string
}
variable "key_name" {
  type = string
}

variable "ports" {
  description = "List of ports to allow"
  type        = list(number)
}
