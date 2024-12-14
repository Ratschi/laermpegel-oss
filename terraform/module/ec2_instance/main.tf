resource "aws_instance" "ec2_instance" {
  ami                    = "ami-028f6d7ddc3079baf"
  instance_type          = "t2.small"
  subnet_id              = var.subnet_id
  vpc_security_group_ids = [var.nsg_id]
  associate_public_ip_address = false
  user_data = var.user_data

  tags = {
    Name = var.name
  }
}