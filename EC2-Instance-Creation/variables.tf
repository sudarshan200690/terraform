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

variable "image_name" {
  description = "image name to select"
  type        = string
}

variable "owners" {
  description = "owner of the image name- ami"
  type        = number
}

variable "root-device-type" {
  description = "root-device-type of the image- ami"
  type        = string
}

variable "virtualization-type" {
  description = "virtualization-type of the image - ami"
  type        = string
}

variable "instance_name" {
  description = "Tag name of the Ec2 instance"
  type        = string
}
