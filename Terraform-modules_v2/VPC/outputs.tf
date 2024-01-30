output "vpc_id" {
  value       = aws_vpc.main.id
  description = "VPC ID"
}
output "public_subnet_ids" {
  value       = aws_subnet.public.*.id
  description = "List of public subnet IDs"
}
output "private_subnet_ids" {
  value       = aws_subnet.app.*.id
  description = "List of private subnet IDs"
}
output "vpc_cidr_block" {
  value       = var.vpc_cidr_block
  description = "The CIDR block associated with the VPC"
}
output "public_route_table_id" {
  value = aws_route_table.public.*.id
  description = "The Public route table id"
}
output "private_route_taable_id" {
  value = aws_route_table.app.*.id
  description = "The Private route table id"
}
output "igw_id" {
  value = aws_internet_gateway.main.id
  description = "The Internet Gateway id"
}
