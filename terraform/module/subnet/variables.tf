variable "vpc_id" {
  type        = string
  description = "ID der VPC"
}

variable "cidr_block" {
  type        = string
  description = "IP Range des Subnetzes"
}

variable "name" {
  type        = string
  description = "Name der Ressource"
}

variable "availability_zone" {
  type = string
  default = "us-east-1a"
  description = "Zone der Subnetz"
}

