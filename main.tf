resource "google_compute_network_endpoints" "compute_network_endpoints" {
  for_each = var.compute_network_endpoints

  network_endpoint_group = each.value.network_endpoint_group
  deletion_policy        = each.value.deletion_policy
  project                = each.value.project
  zone                   = each.value.zone

  dynamic "network_endpoints" {
    for_each = each.value.network_endpoints != null ? each.value.network_endpoints : []
    content {
      instance   = network_endpoints.value.instance
      ip_address = network_endpoints.value.ip_address
      port       = network_endpoints.value.port
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

