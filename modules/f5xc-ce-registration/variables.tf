variable "f5xc_api_url" {
  type = string
}

variable "f5xc_api_cert" {
  type = string
}

variable "f5xc_api_key" {
  type = string
}

variable "f5xc_cluster_name" {
  type = string
}

variable "f5xc_cluster_size" {
  type = number
}

variable "private_dns" {
  type = list(any)
}

variable "f5xc_registration_wait_time" {
  type    = number
  default = 60
}

variable "f5xc_registration_retry" {
  type    = number
  default = 20
}