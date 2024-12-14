variable "nsg_id" {
  type = string
  description = "ID des NSG"
}

variable "subnet_id" {
  type = string
  description = "ID des Subnetzes"
}

variable "name" {
  type = string
  description = "Name der Ressource"
}

variable "user_data" {
  description = "Userdata File"
}