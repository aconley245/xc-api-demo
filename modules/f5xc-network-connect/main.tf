resource "volterra_network_connector" "l3" {
  name      = var.connector_name
  namespace = var.namespace

  sli_to_global_dr {
    global_vn {
      tenant = var.tenant
      namespace = var.namespace
      name = var.virtual_network_name
    }
  }

  disable_forward_proxy = true
}