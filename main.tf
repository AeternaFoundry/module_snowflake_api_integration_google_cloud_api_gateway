resource "snowflake_api_integration_google_cloud_api_gateway" "api_integration_google_cloud_api_gateways" {
  for_each = var.api_integration_google_cloud_api_gateways

  api_allowed_prefixes = each.value.api_allowed_prefixes
  enabled              = each.value.enabled
  google_audience      = each.value.google_audience
  name                 = each.value.name
  api_blocked_prefixes = each.value.api_blocked_prefixes
  comment              = each.value.comment

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      read   = timeouts.value.read
      update = timeouts.value.update
    }
  }
}

