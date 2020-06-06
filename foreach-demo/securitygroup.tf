resource "aws_security_group" "myexample" {
  name = "myexample" # can use expressions here

  dynamic "ingress" {
    #for_each = [22, 443]
    for_each = var.ports
    content {
      from_port   = ingress.value
      to_port     = ingress.value
      cidr_blocks = ["0.0.0.0/0"]
      protocol    = "tcp"
    }
  }
}
