terraform {
  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "~> 4"
    }
  }

  backend "s3" {
    bucket = "tofu-state"
    key    = "eearomatics.com/iac/prod"
  }
}
