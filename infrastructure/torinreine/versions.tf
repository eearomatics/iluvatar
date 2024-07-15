terraform {
  required_providers {
    cloudflare = {
      source = "cloudflare/cloudflare"
      version = "~> 4"
    }
  }

  backend "s3" {
    # sourced from config/backend.hcl
  }
}
