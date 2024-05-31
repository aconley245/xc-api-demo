resource "volterra_network_interface" "inside" {
  name      = var.interface_name
  namespace = var.namespace

  // One of the arguments from this list "dedicated_management_interface dedicated_interface ethernet_interface tunnel_interface legacy_interface" must be set

  ethernet_interface {
    device = "eth1"
    untagged = true
    dhcp_client = true
    site_local_inside_network = true
    not_primary = true
    monitor_disabled = true
  }
}