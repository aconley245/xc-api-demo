variable "aws_region" {
  description = "REQUIRED: AWS Region to deploy the VPC into"
  type        = string
  default     = "us-east-1"
}

variable "aws_access_key" {
  description = "REQUIRED: AWS programatic access key"
  type        = string
}

variable "aws_secret_key" {
  description = "REQUIRED: AWS programatic secret key"
  type        = string
}

variable "resource_owner" {
  description = "OPTIONAL: Provide owner of the deployment for tagging purposes"
  type        = string
  default     = "demo.user"
}

variable "cidr_block" {
  description = "REQUIRED: CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "vpc_name" {
  description = "REQUIRED: Name of the VPC"
  type        = string
  default     = "vpc"
}

variable "public_subnet_cidrs" {
  type        = list(string)
  description = "Public Subnet CIDR values"
  default     = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
}

variable "private_subnet_cidrs" {
  type        = list(string)
  description = "Private Subnet CIDR values"
  default     = ["10.0.4.0/24", "10.0.5.0/24", "10.0.6.0/24"]
}

variable "azs" {
  type        = list(string)
  description = "Availability Zones"
  default     = ["us-east-1a", "us-east-1b", "us-east-1c"]
}

variable "igw_name" {
  description = "REQUIRED: Name of the VPC"
  type        = string
  default     = "igw"
}