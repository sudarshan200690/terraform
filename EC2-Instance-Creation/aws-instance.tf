# Creating EC2 - Instance
resource "aws_instance" "Ec2Instance" {
  ami                    = var.ami
  instance_type          = var.instance_type
  key_name               = aws_key_pair.key-tf.key_name
  vpc_security_group_ids = ["${aws_security_group.allow_tls.id}"]
  tags = {
    Name = "tf-example"
  }
  user_data = "file(${path.module}/script.sh)"

connection {
  type = "ssh"
  user = "ec2-user"
  private_key = file("${path.module}/id_rsa")
  host = "${self.public_ip}"
}
#provisioner: file, local-exec, remote-exec
provisioner "file" {
source = "README.md" # host machine current directory
destination = "/tmp/README.md" #remote machine which will be created as part of this
}
provisioner local-exec{
  command = "echo ${self.public_ip} > tmp/mypublicip.txt"
}
}


