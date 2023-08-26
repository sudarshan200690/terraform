provider "aws" {
  region     = var.region
  access_key = var.access_key
  secret_key = var.secret_key
}

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

data "aws_ami" "ec2-user" {
  most_recent = true
  owners      = ["137112412989"]
  # name = al2023-ami-*
  # Root device type = ebs
  # Virtualization = hvm
  filter {
    name   = "name"
    values = ["al2023-ami-*"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}

output "ami_id" {
  value = data.aws_ami.ec2-user.id
}
