resource "cloudflare_r2_bucket" "container_registry_bucket" {
  account_id = var.cf_acct_id
  name       = "container-registry-bucket"
  location   = "ENAM"
}

resource "cloudflare_r2_bucket" "container_registry_bucket_dev" {
  account_id = var.cf_acct_id
  name       = "container-registry-bucket-dev"
  location   = "ENAM"
}
