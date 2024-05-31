#Project Globals
variable "admin_src_addr" {
  type        = string
  description = "Allowed Admin source IP prefix"
  default     = "0.0.0.0/0"
}
variable "project_prefix" {
  type = string
  description = "REQUIRED: Build prefix to add to object names"
}
variable "build_suffix" {
  type = string
  description = "REQUIRED: Build suffix to add to object names"
}

#AWS
variable "resource_owner" {
  description = "OPTIONAL: Provide owner of the deployment for tagging purposes"
  type        = string
  default     = "demo.user"
}
variable "aws_region" {
  description = "REQUIRED: AWS Region to deploy the VPC into"
  type        = string
  default     = "us-east-1"
}
variable "azs" {
  description = "Availability Zones"
  type        = list
}
variable "vpc_id" {
  description = "VPC ID"
  type        = string
}
variable "eks_cidr" {
  type = string
  description = "REQUIRED: EKS cluster CIDR"
}
variable "eks_addons" {
  type = list(object({
    name    = string
    version = string
  }))
  default = [
    {
      name    = "kube-proxy"
      version = "v1.25.6-eksbuild.1"
    },
    {
      name    = "vpc-cni"
      version = "v1.12.2-eksbuild.1"
    },
    {
      name    = "coredns"
      version = "v1.8.7-eksbuild.3"
    },
    {
      name    = "aws-ebs-csi-driver"
      version = "v1.13.0-eksbuild.3"
    }
  ]
}
variable "ssh_key" {
  type        = string
  description = "Unneeded for EKS, only present for warning handling with TF cloud variable set"
}
variable "vpc_main_route_table_id" {
  type = string
  description = "VPC Route Table ID"
}
variable "public_subnet_ids" {
  type = list
  description = "List of public subnet IDs"
}











