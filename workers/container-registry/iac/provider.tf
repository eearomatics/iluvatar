provider "cloudflare" {
  api_token = var.cf_api_token
}

provider "infisical" {
  client_id     = var.infisical_client_id
  client_secret = var.infisical_client_secret
}