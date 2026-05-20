variable "app_port" {
  type        = number
  description = "Puerto asignado a la aplicacion de Facturacion"
  default     = 3000
}

variable "allowed_cidr" {
  type        = string
  description = "IP permitida para trafico entrante"
  default     = "0.0.0.0/0"
}