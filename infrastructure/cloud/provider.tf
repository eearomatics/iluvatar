provider "upstash" {
  email    = var.upstash_email
  api_key  = var.upstash_api_key
}

provider "neon" {
  token = var.neon_token
}

provider "redpanda" {
  client_id      = var.redpanda_client_id
  client_secret  = var.redpanda_client_secret
}