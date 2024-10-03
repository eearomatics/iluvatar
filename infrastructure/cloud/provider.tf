provider "upstash" {
  email    = var.upstash_email
  api_key  = var.upstash_api_key
}

provider "neon" {
  token = var.neon_token
}