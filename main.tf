data "oci_identity_domains_rule" "identity_domains_rule_lookup" {
  for_each = var.identity_domains_rule_lookup

  idcs_endpoint                = each.value.idcs_endpoint
  rule_id                      = each.value.rule_id
  attribute_sets               = each.value.attribute_sets
  attributes                   = each.value.attributes
  authorization                = each.value.authorization
  resource_type_schema_version = each.value.resource_type_schema_version
}

