variable "log_analytics_namespaces" {
  description = <<EOT
Map of log_analytics_namespaces, attributes below
Required:
    - compartment_id
    - is_onboarded
    - namespace
Optional:
    - timeouts (block):
        - create (optional)
        - update (optional)
EOT

  type = map(object({
    compartment_id = string
    is_onboarded   = bool
    namespace      = string
    timeouts = optional(object({
      create = optional(string)
      update = optional(string)
    }))
  }))
}

