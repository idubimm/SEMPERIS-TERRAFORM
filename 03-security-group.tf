


resource "aws_security_group" "sg_custom_public" {
  vpc_id = aws_vpc.custom_vpc.id



  egress {
    from_port   = 0
    to_port     = 0
    protocol    = -1
    cidr_blocks = ["0.0.0.0/0"]
  }

  dynamic "ingress" {
    for_each = var.sg_ingress_ports
    content {
      from_port   = ingress.value
      to_port     = ingress.value
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }

  tags = {
    "Name"        = "sg_custom_public"
    "Description" = "custom security public group"
  }

}

resource "aws_security_group" "sg_custom_private" {
  vpc_id = aws_vpc.custom_vpc.id



  egress {
    from_port   = 0
    to_port     = 0
    protocol    = -1
    cidr_blocks = ["0.0.0.0/0"]
  }

  # dynamic "ingress" {
  #   for_each = var.sg_ingress_ports
  #   content {
  #     from_port   = ingress.value
  #     to_port     = ingress.value
  #     protocol    = "tcp"
  #     cidr_blocks = ["0.0.0.0/0"]
  #   }
  # }

  tags = {
    "Name"        = "sg_custom_private"
    "Description" = "custom security private group"
  }

}
