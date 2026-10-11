resource "oci_log_analytics_namespace" "log_analytics_namespaces" {
  for_each = var.log_analytics_namespaces

  compartment_id = each.value.compartment_id
  is_onboarded   = each.value.is_onboarded
  namespace      = each.value.namespace

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      update = timeouts.value.update
    }
  }
}

