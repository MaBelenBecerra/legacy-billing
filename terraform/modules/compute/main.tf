resource "aws_instance" "app_server" {
  ami                  = var.ami_id
  instance_type        = var.instance_type
  vpc_security_group_ids = [var.security_group_id]
  iam_instance_profile = var.iam_instance_profile

  # Script de arranque verificado al 100%
  user_data = <<-EOF
              #!/bin/bash
              # Actualizar paquetes nativos
              yum update -y
              
              # Instalar Node.js, NPM y Git de forma limpia
              yum install -y nodejs npm git
              
              cd /home/ec2-user
              git clone https://github.com/MaBelenBecerra/legacy-billing.git
              
              # Entrar a la carpeta e instalar dependencias locales
              cd legacy-billing
              npm install
              
              # Forzar el puerto 3000 de Facturación y levantar en segundo plano
              export PORT=3000
              nohup node server.js > app.log 2>&1 &
              EOF

  tags = {
    Name = "Lab-IaC-MariaBecerra"
  }
}