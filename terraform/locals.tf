locals {
  region = "xxxx" # AWS Region wo alles erstellt werden soll
  az_region_1 = "xxxx" # Primary Availability Zone
  az_region_2 = "xxxx" # Secondary Avalability Zone
  servicename = "xxxx" # z.B. Laermpegel
  vpc_cidr_block = "xxxx" # IP Range für VPC
  subnet_cidr_block = "xxxx" # IP Range für Subnetz
  db_subnet_1_cidr_block = "xxxx" # IP Range für DB Subnetz 1
  db_subnet_2_cidr_block = "xxxx" # IP Range für DB Subnetz 2
  mysql_user_name = "xxxx" # Username für RDS MySQL
  mysql_user_pw = "xxxx" # PW für User auf RDS
}