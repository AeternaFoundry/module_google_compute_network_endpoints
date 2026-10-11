output "compute_network_endpoints_id" {
  description = "Map of id values across all compute_network_endpoints, keyed the same as var.compute_network_endpoints except keys with no id are omitted"
  value       = { for k, v in google_compute_network_endpoints.compute_network_endpoints : k => v.id if v.id != null && length(v.id) > 0 }
}
output "compute_network_endpoints_deletion_policy" {
  description = "Map of deletion_policy values across all compute_network_endpoints, keyed the same as var.compute_network_endpoints except keys with no deletion_policy are omitted"
  value       = { for k, v in google_compute_network_endpoints.compute_network_endpoints : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "compute_network_endpoints_network_endpoint_group" {
  description = "Map of network_endpoint_group values across all compute_network_endpoints, keyed the same as var.compute_network_endpoints except keys with no network_endpoint_group are omitted"
  value       = { for k, v in google_compute_network_endpoints.compute_network_endpoints : k => v.network_endpoint_group if v.network_endpoint_group != null && length(v.network_endpoint_group) > 0 }
}
output "compute_network_endpoints_network_endpoints" {
  description = "Map of network_endpoints values across all compute_network_endpoints, keyed the same as var.compute_network_endpoints except keys with no network_endpoints are omitted"
  value       = { for k, v in google_compute_network_endpoints.compute_network_endpoints : k => v.network_endpoints if v.network_endpoints != null && length(v.network_endpoints) > 0 }
}
output "compute_network_endpoints_project" {
  description = "Map of project values across all compute_network_endpoints, keyed the same as var.compute_network_endpoints except keys with no project are omitted"
  value       = { for k, v in google_compute_network_endpoints.compute_network_endpoints : k => v.project if v.project != null && length(v.project) > 0 }
}
output "compute_network_endpoints_zone" {
  description = "Map of zone values across all compute_network_endpoints, keyed the same as var.compute_network_endpoints except keys with no zone are omitted"
  value       = { for k, v in google_compute_network_endpoints.compute_network_endpoints : k => v.zone if v.zone != null && length(v.zone) > 0 }
}

