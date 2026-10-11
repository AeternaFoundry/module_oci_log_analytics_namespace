output "log_analytics_namespaces_id" {
  description = "Map of id values across all log_analytics_namespaces, keyed the same as var.log_analytics_namespaces except keys with no id are omitted"
  value       = { for k, v in oci_log_analytics_namespace.log_analytics_namespaces : k => v.id if v.id != null && length(v.id) > 0 }
}
output "log_analytics_namespaces_compartment_id" {
  description = "Map of compartment_id values across all log_analytics_namespaces, keyed the same as var.log_analytics_namespaces except keys with no compartment_id are omitted"
  value       = { for k, v in oci_log_analytics_namespace.log_analytics_namespaces : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "log_analytics_namespaces_is_onboarded" {
  description = "Map of is_onboarded values across all log_analytics_namespaces, keyed the same as var.log_analytics_namespaces except keys with no is_onboarded are omitted"
  value       = { for k, v in oci_log_analytics_namespace.log_analytics_namespaces : k => v.is_onboarded if v.is_onboarded != null }
}
output "log_analytics_namespaces_namespace" {
  description = "Map of namespace values across all log_analytics_namespaces, keyed the same as var.log_analytics_namespaces except keys with no namespace are omitted"
  value       = { for k, v in oci_log_analytics_namespace.log_analytics_namespaces : k => v.namespace if v.namespace != null && length(v.namespace) > 0 }
}

