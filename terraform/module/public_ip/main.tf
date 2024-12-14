resource "aws_eip" "eip" {
  instance = var.instance
  domain = "vpc"
  tags = {
    Name = var.name
  }
}

resource "aws_eip_association" "eip_assoc" {
  instance_id   = var.instance
  allocation_id = aws_eip.eip.id
}