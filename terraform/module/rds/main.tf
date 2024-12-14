resource "aws_db_instance" "rds" {
  allocated_storage    = 20
  storage_type         = "gp2"
  engine               = "mysql"
  engine_version       = "8.0.34"
  instance_class       = "db.t3.micro"
  username             = var.username
  password             = var.password
  publicly_accessible  = true  # Macht die Datenbank öffentlich erreichbar
  vpc_security_group_ids = [var.vpc_security_group_ids]
  db_subnet_group_name = aws_db_subnet_group.db_sub.name
  tags = {
    name = var.name
  }
}

resource "aws_db_subnet_group" "db_sub" {
  name       = var.sub_name
  subnet_ids = [var.subnet_1_id,var.subnet_2_id]

  tags = {
    Name = var.sub_name
  }
}