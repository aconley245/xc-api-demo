resource "volterra_virtual_network" "l3" {
  name      = var.network_name
  namespace = var.namespace

  global_network = true 

}
