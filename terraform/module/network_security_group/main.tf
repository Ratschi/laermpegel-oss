resource "aws_security_group" "nsg" {
  name        = var.name
  description = var.description
  vpc_id      = var.vpc_id

  tags = {
    Name = var.name
  }
}

resource "aws_vpc_security_group_ingress_rule" "allow_tls_ipv4" {
  count = length(var.ports)
  security_group_id = aws_security_group.nsg.id
  cidr_ipv4         = "0.0.0.0/0"
  from_port         = var.ports[count.index]
  ip_protocol       = "tcp"
  to_port           = var.ports[count.index]
}

resource "aws_vpc_security_group_egress_rule" "allow_all_traffic" {
  security_group_id = aws_security_group.nsg.id
  cidr_ipv4         = "0.0.0.0/0"
  ip_protocol       = "-1"
  }