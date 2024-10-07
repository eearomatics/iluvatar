locals {
  workerEnvironment = "production"
  script_name = "${data.toml_file.wrangler_toml.content["name"]}-${local.workerEnvironment}"
}

data "toml_file" "wrangler_toml" {
  input = file("${path.module}/../wrangler.toml")
}

data "infisical_projects" "eearomatics" {
  slug = "eearomatics"
}

data "infisical_secrets" "app_secrets" {
  env_slug     = "prod"
  workspace_id = data.infisical_projects.eearomatics.id
  folder_path  = "/apps/container-registry"
}

resource "cloudflare_workers_secret" "registry_username" {
  account_id  = var.cf_acct_id
  name        = "USERNAME"
  script_name = local.script_name
  secret_text = data.infisical_secrets.app_secrets.secrets["USERNAME"].value
}

resource "cloudflare_workers_secret" "registry_password" {
  account_id  = var.cf_acct_id
  name        = "PASSWORD"
  script_name = local.script_name
  secret_text = data.infisical_secrets.app_secrets.secrets["PASSWORD"].value
}

resource "cloudflare_workers_secret" "registry_ro_username" {
  account_id  = var.cf_acct_id
  name        = "READONLY_USERNAME"
  script_name = local.script_name
  secret_text = data.infisical_secrets.app_secrets.secrets["READONLY_USERNAME"].value
}

resource "cloudflare_workers_secret" "registry_ro_password" {
  account_id  = var.cf_acct_id
  name        = "READONLY_PASSWORD"
  script_name = local.script_name
  secret_text = data.infisical_secrets.app_secrets.secrets["READONLY_PASSWORD"].value
}
