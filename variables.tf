variable "identity_pool_lookup" {
  description = <<EOT
Map of identity_pool_lookup, attributes below
Required:
    - identity_provider (block):
        - id (required)
Optional:
    - display_name
EOT

  type = map(object({
    display_name = optional(string)
    identity_provider = object({
      id = string
    })
  }))
}

