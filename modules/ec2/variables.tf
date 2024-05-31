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

variable "sec_group_name" {
  description = "REQUIRED: Provide name of the security group to create for the instance"
  type        = string
  default     = "server_sg"
}

variable "vpc_id" {
  description = "REQUIRED: Provide the VPC ID to create the EC2 instance in"
  type        = string
}

variable "ami" {
  description = "REQUIRED: Provide the Amazon Machine Image ID"
  type        = string
  default     = "ami-03f38e546e3dc59e1"
}

variable "instance_type" {
  description = "REQUIRED: Provide the Amazon instance type"
  type        = string
  default     = "t2.micro"
}

variable "subnet_id" {
  description = "REQUIRED: Provide the subnet id"
  type        = string
}

variable "aws_key_name" {
  description = "REQUIRED: Provide the AWS SSH Key to use"
  type        = string
}


variable "instance_disk_size" {
  description = "REQUIRED: Provide the disk size in GB"
  type        = string
  default     = "20"
}

variable "volume_type" {
  description = "REQUIRED: Provide the volume type"
  type        = string
  default     = "gp2"
}

variable "server_name" {
  description = "REQUIRED: Provide the server name"
  type        = string
  default     = "server01"
}