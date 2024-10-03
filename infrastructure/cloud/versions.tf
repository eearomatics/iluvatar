terraform {
  required_providers {
    upstash = {
      source = "upstash/upstash"
      version = "1.5.3"
    }
    neon = {
      source = "terraform-community-providers/neon"
      version = "0.1.8"
    }
  }

  backend "s3" {
    bucket = "tofu-state"
    key    = "cloud/iac/prod/tfstate"
  }
}
