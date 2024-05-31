output "vpc_id" {
  value = aws_vpc.main.id
}

output "igw_id" {
  value = aws_internet_gateway.igw.id
}

output "public_subnet_ids" {
  value = ["${aws_subnet.public_subnets[*].id}"]
}

output "private_subnet_ids" {
  value = ["${aws_subnet.private_subnets[*].id}"]
}

output "public_rt_id" {
  value = aws_route_table.public_rt.id
}

output "private_rt_id" {
  value = aws_route_table.private_rt.id
}

output "nat_gateway_ip" {
  value = aws_eip.nat_gateway_eip.public_ip
}

output "nat_gateway_id" {
  value = aws_nat_gateway.nat_gateway.id
}