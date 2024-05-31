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

variable "project_prefix" {
  description = "REQUIRED: Project prefix to append to created objects"
  type        = string
  default     = "api-demo"
}
variable "ssh_key" {
  type        = string
  description = "key used for authentication in ssh-rsa format"
}
variable cidr {
  description = "the CIDR block for the Virtual Private Cloud (VPC) of the deployment"
  default = "10.0.0.0/16"
  type    = string
  validation {
    condition = can(regex("^([0-9]{1,3}.){3}[0-9]{1,3}($|/(16|24))$",var.cidr))
    error_message = "The value must conform to a CIDR block format."
  }
}
variable "azs" {
  description = "Availability Zones"
  type        = list
}
variable "create_nat_gateway" {
  type        = bool
  default     = false
  description = "Set to true if a NGW is needed"
}
variable "admin_src_addr" {
  type        = string
  description = "Allowed Admin source IP prefix"
  default     = "0.0.0.0/0"
}
variable "mgmt_address_prefixes" {
  type        = list(any)
  default     = ["10.1.1.0/24", "10.1.100.0/24"]
  description = "Management subnet address prefixes"
}
variable "ext_address_prefixes" {
  type        = list(any)
  default     = ["10.1.10.0/24", "10.1.110.0/24"]
  description = "External subnet address prefixes"
}
variable "int_address_prefixes" {
  type        = list(any)
  default     = ["10.1.20.0/24", "10.1.120.0/24"]
  description = "Internal subnet address prefixes"
}