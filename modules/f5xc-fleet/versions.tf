terraform {
  required_version = ">= 1.3.0"

  required_providers {
    volterra = {
      source  = "volterraedge/volterra"
      version = "= 0.11.21"
    }
  }
}

provider "volterra" {
  api_cert = var.f5xc_api_cert
  api_key  = var.f5xc_api_key
  url      = var.f5xc_api_url
}