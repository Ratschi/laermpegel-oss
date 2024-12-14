variable "name" {
  type = string
  description = "Name der Instanz"
}

variable "username" {
  type = string
  description = "Username für Datenbank"
}

variable "password" {
  type = string
  description = "PW für Datenbank"
}

variable "vpc_security_group_ids" {
  type = string
  description = "ID NSG"
}

variable "sub_name" {
  type = string
  description = "Name der Subnetzgruppe"
}

variable "subnet_1_id" {
  type = string
  description = "ID der Subnetzgruppe"
}

variable "subnet_2_id" {
  type = string
  description = "ID der Subnetzgruppe"
}