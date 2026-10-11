data "gitlab_project_protected_tags" "project_protected_tags_lookup" {
  for_each = var.project_protected_tags_lookup

  project = each.value.project
}

