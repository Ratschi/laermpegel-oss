output "eip_id" {
  value = aws_eip.eip.id
}

output "eip_assoc" {
  value = aws_eip_association.eip_assoc.allocation_id
}