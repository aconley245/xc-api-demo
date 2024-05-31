#Global
output "project_prefix" {
  value = var.project_prefix
}
output "resource_owner" {
  value = var.resource_owner
}
output "build_suffix" {
  value = random_id.build_suffix.hex
}
#Outputs
output "aws_region" {
  value = var.aws_region
}
output "azs" {
  value = var.azs
}
