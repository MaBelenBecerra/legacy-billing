variable "aws_region" {
  type    = string
  default = "us-east-1"
}

variable "ami_id" {
  type    = string
  default = "ami-051f7e7f6c2f40dc1" # Amazon Linux 2023 en us-east-1
}

variable "instance_type" {
  type    = string
  default = "t3.micro"
}

variable "iam_instance_profile" {
  type    = string
  default = "LabInstanceProfile" # <- Modificado aquí
}

variable "app_port" {
  type    = number
  default = 3000 # Grupo A: Billing
}

variable "my_public_ip" {
  type    = string
  default = "190.104.20.154/32"
}