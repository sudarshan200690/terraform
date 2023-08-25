output "userage" {
    value = "${var.username} age is ${lookup(var.userage, "${var.username}")}"
}