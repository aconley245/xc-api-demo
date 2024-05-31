variable "f5xc_api_url" {
  type = string
}

variable "f5xc_api_cert" {
  type = string
}

variable "f5xc_api_key" {
  type = string
}

variable "fleet_name" {
  type = string
}

variable "namespace" {
  type = string
  default = "system"
}

variable "fleet_label" {
  type = string
}

variable "tenant" {
  type = string
}

variable "connector_name" {
  type = string
}

variable "interface_name" {
  type = string
}