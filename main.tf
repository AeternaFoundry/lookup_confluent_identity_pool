data "confluent_identity_pool" "identity_pool_lookup" {
  for_each = var.identity_pool_lookup

  display_name = each.value.display_name

  identity_provider {
    id = each.value.identity_provider.id
  }
}

