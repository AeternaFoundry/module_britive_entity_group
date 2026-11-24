resource "britive_entity_group" "entity_groups" {
  for_each = var.entity_groups

  application_id     = each.value.application_id
  entity_description = each.value.entity_description
  entity_name        = each.value.entity_name
  parent_id          = each.value.parent_id
  entity_id          = each.value.entity_id
}

