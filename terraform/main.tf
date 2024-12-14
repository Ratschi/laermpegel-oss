module "vpc" {
 source = "./module/vpc"
 cidr_block = local.vpc_cidr_block
 name = "${local.servicename}-vpc"
}

module "subnet" {
 source = "./module/subnet"
 cidr_block = local.subnet_cidr_block
 vpc_id = module.vpc.vpc_id
 name = "${local.servicename}-subnet"
}

module "db_subnet_1" {
 source = "./module/subnet"
 cidr_block = local.db_subnet_1_cidr_block
 vpc_id = module.vpc.vpc_id
 name = "${local.servicename}-db-1-subnet"
}

module "db_subnet_2" {
 source = "./module/subnet"
 cidr_block = local.db_subnet_2_cidr_block
 availability_zone = local.az_region_2
 vpc_id = module.vpc.vpc_id
 name = "${local.servicename}-db-2-subnet"
}

module "igw" {
  source = "./module/internetgateway"
  name = "${local.servicename}-igw"
  vpc_id = module.vpc.vpc_id
}

module "route_table" {
  source = "./module/route_table"
  name = "${local.servicename}-route_table"
  subnet_id = module.subnet.subnet_id
  gateway_id = module.igw.igw_id
  vpc_id = module.vpc.vpc_id
}

module "nsg" {
  source = "./module/network_security_group"
  name = "${local.servicename}-nsg"
  vpc_id = module.vpc.vpc_id
  vpc_cidr = module.vpc.vpc_cidr
  ports = [22,443,80,18083,3306,1883,3000]
}

module "ec2_instance" {
  source = "./module/ec2_instance"
  name = "${local.servicename}-ec2"
  nsg_id = module.nsg.nsg_id
  subnet_id = module.subnet.subnet_id
  user_data = file("userdata.sh")
}

module "eip" {
  source = "./module/public_ip"
  instance = module.ec2_instance.ec2_id
  name = "${local.servicename}-ec2"
}

module "rds" {
  source = "./module/rds"
  name = "${local.servicename}-rds"
  username = local.mysql_user_name
  password = local.mysql_user_pw
  vpc_security_group_ids = module.nsg.nsg_id
  sub_name = "${local.servicename}-db-subnet"
  subnet_1_id = module.db_subnet_1.subnet_id
  subnet_2_id = module.db_subnet_2.subnet_id
}