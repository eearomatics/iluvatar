resource "infisical_project" "eearomatics" {
  name = "Ethereal Elegance Aromatics"
  slug = "eearomatics"
}

resource "infisical_project_user" "admin" {
  project_id = infisical_project.eearomatics.id
  username   = "it@eearomatics.com"
  roles = [
    {
      role_slug = "admin"
    }
  ]
}

resource "infisical_project_user" "github-actions" {
  project_id = infisical_project.eearomatics.id
  username   = "github-actions@eearomatics.com"
  roles = [
    {
      role_slug = "member"
    }
  ]
}

### NOTE: Automatically generated in new projects
# resource "infisical_project_environment" "prod" {
#   name       = "Production"
#   project_id = infisical_project.eearomatics.id
#   slug       = "prod"
# }
# resource "infisical_project_environment" "dev" {
#   name       = "Development"
#   project_id = infisical_project.eearomatics.id
#   slug       = "dev"
# }
### NOTE: Generated but MANUALLY DELETED
# resource "infisical_project_environment" "staging" {
#   name       = "Staging"
#   project_id = infisical_project.eearomatics.id
#   slug       = "staging"
# }