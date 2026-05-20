resource "aws_security_group" "app_sg" {
  name        = "legacy-billing-sg"
  description = "Security Group para modulo de Facturacion"

  ingress {
    description = "Acceso a la aplicacion Node.js"
    from_port   = var.app_port
    to_port     = var.app_port
    protocol    = "tcp"
    cidr_blocks = [var.allowed_cidr]
  }

  ingress {
    description = "Acceso SSH seguro"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "Lab-IaC-Billing-SG"
  }
}