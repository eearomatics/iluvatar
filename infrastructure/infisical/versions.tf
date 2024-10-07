terraform {
  required_providers {
    infisical = {
      source = "Infisical/infisical"
      version = "0.11.4"
    }
  }

  backend "s3" {
    bucket = "tofu-state"
    key    = "infisical/iac/prod/tfstate"
  }
}
