terraform {
  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "~> 4"
    }
    infisical = {
      source = "Infisical/infisical"
      version = "0.11.4"
    }
    toml = {
      source = "Tobotimus/toml"
      version = "0.3.0"
    }
  }

  backend "s3" {
    bucket = "tofu-state"
    key    = "container-registry/iac/prod/tfstate"
  }
}
