variable "compute_network_endpoints" {
  description = <<EOT
Map of compute_network_endpoints, attributes below
Required:
    - network_endpoint_group
Optional:
    - deletion_policy
    - project
    - zone
    - network_endpoints (block):
        - instance (optional)
        - ip_address (optional)
        - port (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    network_endpoint_group = string
    deletion_policy        = optional(string)
    project                = optional(string)
    zone                   = optional(string)
    network_endpoints = optional(list(object({
      instance   = optional(string)
      ip_address = optional(string)
      port       = optional(number)
    })))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

