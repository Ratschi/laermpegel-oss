output "nsg_id" {
  value = aws_security_group.nsg.id
}

output "ingress_rule" {
  value = [for rule in aws_vpc_security_group_ingress_rule.allow_tls_ipv4 : rule.id]
}


output "egress_rule" {
  value = aws_vpc_security_group_egress_rule.allow_all_traffic.id
}