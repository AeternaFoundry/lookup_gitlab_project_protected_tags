variable "project_protected_tags_lookup" {
  description = <<EOT
Map of project_protected_tags_lookup, attributes below
Required:
    - project
EOT

  type = map(object({
    project = string
  }))
}

