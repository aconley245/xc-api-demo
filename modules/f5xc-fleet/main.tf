resource "volterra_fleet" "mcn" {
  name      = var.fleet_name
  namespace = var.namespace

  fleet_label = var.fleet_label
  
  network_connectors {
    tenant = var.tenant
    namespace = var.namespace
    name = var.connector_name
  }

  interface_list {
    interfaces {
      tenant = var.tenant
      namespace = var.namespace
      name = var.interface_name
    }
  }

  no_bond_devices = true
  no_storage_interfaces = true
  no_storage_device = true
  no_dc_cluster_group = true
  disable_gpu = true
  no_storage_static_routes = true
  enable_default_fleet_config_download = true
  logs_streaming_disabled = true
  deny_all_usb = true
  disable_vm = true
  performance_enhancement_mode {
    perf_mode_l7_enhanced = true
  }
}