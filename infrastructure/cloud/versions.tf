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
    redpanda = {
      source = "redpanda-data/redpanda"
      version = "0.7.0"
    }
  }

  backend "s3" {
    bucket = "tofu-state"
    key    = "cloud/iac/prod/tfstate"
  }
}
