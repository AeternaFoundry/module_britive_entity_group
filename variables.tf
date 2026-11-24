variable "entity_groups" {
  description = <<EOT
Map of entity_groups, attributes below
Required:
    - application_id
    - entity_description
    - entity_name
    - parent_id
Optional:
    - entity_id
EOT

  type = map(object({
    application_id     = string
    entity_description = string
    entity_name        = string
    parent_id          = string
    entity_id          = optional(string)
  }))
  validation {
    condition = alltrue([
      for k, v in var.entity_groups : (
        v.entity_id == null || (length(v.entity_id) >= 1)
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.entity_groups : (
        length(v.application_id) >= 1
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.entity_groups : (
        length(v.entity_name) >= 1
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.entity_groups : (
        length(v.entity_description) >= 1
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.entity_groups : (
        length(v.parent_id) >= 1
      )
    ])
    error_message = "must not be empty"
  }
}

