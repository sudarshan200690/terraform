# Creating data-source to take ami id
data "aws_ami" "ec2-user" {
  most_recent = true
  owners      = ["${var.owners}"]
  # name = al2023-ami-*
  # Root device type = ebs
  # Virtualization = hvm
  filter {
    name   = "name"
    values = ["${var.image_name}"]
  }

  filter {
    name   = "root-device-type"
    values = ["${var.root-device-type}"]
  }

  filter {
    name   = "virtualization-type"
    values = ["${var.virtualization-type}"]
  }
}

# Creating EC2 - Instance
resource "aws_instance" "Ec2Instance" {
  ami                    = data.aws_ami.ec2-user.id
  instance_type          = var.instance_type
  key_name               = aws_key_pair.key-tf.key_name
  vpc_security_group_ids = ["${aws_security_group.allow_tls.id}"]
  tags = {
    Name = "${var.instance_name}"
  }
  user_data = "file(${path.module}/script.sh)"

  connection {
    type        = "ssh"
    user        = "ec2-user"
    private_key = file("${path.module}/id_rsa")
    host        = self.public_ip
  }
  #provisioner: file, local-exec, remote-exec
  provisioner "file" {
    source      = "README.md"      # host machine current directory
    destination = "/tmp/README.md" #remote machine which will be created as part of this
  }
  provisioner "local-exec" {
    working_dir = "/tmp/"
    command = "echo ${self.public_ip} > mypublicip.txt"
  }
}


