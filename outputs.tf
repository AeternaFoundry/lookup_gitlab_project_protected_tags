output "project_protected_tags_lookup_id" {
  description = "Map of id values across all project_protected_tags_lookup, keyed the same as var.project_protected_tags_lookup except keys with no id are omitted"
  value       = { for k, v in data.gitlab_project_protected_tags.project_protected_tags_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "project_protected_tags_lookup_project" {
  description = "Map of project values across all project_protected_tags_lookup, keyed the same as var.project_protected_tags_lookup except keys with no project are omitted"
  value       = { for k, v in data.gitlab_project_protected_tags.project_protected_tags_lookup : k => v.project if v.project != null && length(v.project) > 0 }
}
output "project_protected_tags_lookup_protected_tags" {
  description = "Map of protected_tags values across all project_protected_tags_lookup, keyed the same as var.project_protected_tags_lookup except keys with no protected_tags are omitted"
  value       = { for k, v in data.gitlab_project_protected_tags.project_protected_tags_lookup : k => v.protected_tags if v.protected_tags != null && length(v.protected_tags) > 0 }
}

