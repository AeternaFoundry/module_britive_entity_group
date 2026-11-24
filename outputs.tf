output "entity_groups_id" {
  description = "Map of id values across all entity_groups, keyed the same as var.entity_groups"
  value       = { for k, v in britive_entity_group.entity_groups : k => v.id }
}
output "entity_groups_application_id" {
  description = "Map of application_id values across all entity_groups, keyed the same as var.entity_groups"
  value       = { for k, v in britive_entity_group.entity_groups : k => v.application_id }
}
output "entity_groups_entity_description" {
  description = "Map of entity_description values across all entity_groups, keyed the same as var.entity_groups"
  value       = { for k, v in britive_entity_group.entity_groups : k => v.entity_description }
}
output "entity_groups_entity_id" {
  description = "Map of entity_id values across all entity_groups, keyed the same as var.entity_groups"
  value       = { for k, v in britive_entity_group.entity_groups : k => v.entity_id }
}
output "entity_groups_entity_name" {
  description = "Map of entity_name values across all entity_groups, keyed the same as var.entity_groups"
  value       = { for k, v in britive_entity_group.entity_groups : k => v.entity_name }
}
output "entity_groups_parent_id" {
  description = "Map of parent_id values across all entity_groups, keyed the same as var.entity_groups"
  value       = { for k, v in britive_entity_group.entity_groups : k => v.parent_id }
}

