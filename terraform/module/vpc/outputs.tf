output "vpc_id" {
  value       = aws_vpc.vpc.id
  description = "ID der VPC"
}

output "vpc_cidr" {
  value = aws_vpc.vpc.cidr_block
}
