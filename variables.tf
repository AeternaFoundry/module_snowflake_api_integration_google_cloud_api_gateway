variable "api_integration_google_cloud_api_gateways" {
  description = <<EOT
Map of api_integration_google_cloud_api_gateways, attributes below
Required:
    - api_allowed_prefixes
    - enabled
    - google_audience
    - name
Optional:
    - api_blocked_prefixes
    - comment
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - read (optional)
        - update (optional)
EOT

  type = map(object({
    api_allowed_prefixes = list(string)
    enabled              = bool
    google_audience      = string
    name                 = string
    api_blocked_prefixes = optional(list(string))
    comment              = optional(string)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      read   = optional(string)
      update = optional(string)
    }))
  }))
}

