variable "vpc_id" {
  type = string
  description = "ID der VPC"
}

variable "gateway_id" {
  type = string
  description = "ID des IGW"
}

variable "name" {
  type = string
  description = "Name der Ressource"
}

variable "subnet_id" {
  type = string
  description = "ID des Subnetzes"
}