variable "name" {
  type = string
  description = "Name der Ressource"
}

variable "description" {
  type = string
  default = "Allow TLS inbound traffic and all outbound traffic"
  description = "Beschreibung Ressource"
}
variable "vpc_id" {
  type = string
  description = "ID des VPC"
}

variable "vpc_cidr" {
  type = string
  description = "cidr Block von VPC"
}

variable "ports" {
  type = list(number)
  description = "Ports für NSG"
}