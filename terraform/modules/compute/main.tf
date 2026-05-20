resource "aws_instance" "app_server" {
  ami                  = var.ami_id
  instance_type        = var.instance_type
  security_groups      = [var.security_group_id]
  iam_instance_profile = var.iam_instance_profile

  # Script de automatizacion con yum (Amazon Linux 2023)
  user_data = <<-EOF
              #!/bin/bash
              yum update -y
              yum install -y nodejs npm git
              
              cd /home/ec2-user
              git clone https://github.com/Brizio23/legacy-billing.git
              cd legacy-billing
              npm install
              
              export PORT=${var.app_port}
              nohup npm start > app.log 2>&1 &
              EOF

  tags = {
    Name = "Lab-IaC-MariaBecerra"
  }
}