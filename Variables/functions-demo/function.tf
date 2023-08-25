output function {
    value = "my sample function ${join(" ", var.users)}"
}

output demoupper {
    value = "${upper(var.users[2])}"
}

output demolowe {
    value = "${lower(var.users[1])}"
}