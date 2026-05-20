variable "ami_id" {
  type        = string
  description = "AMI ID para Amazon Linux 2023"
}

variable "instance_type" {
  type        = string
  description = "Tipo de instancia de computo EC2"
}

variable "security_group_id" {
  type        = string
  description = "ID del Security Group asociado"
}

variable "iam_instance_profile" {
  type        = string
  description = "Nombre de perfil de instancia IAM para AWS Academy"
}

variable "app_port" {
  type        = number
  description = "Puerto de la aplicacion"
}