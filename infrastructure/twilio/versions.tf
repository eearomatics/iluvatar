terraform {
  required_providers {
    twilio = {
      source = "twilio/twilio"
      version = "0.18.2"
    }
  }

  backend "s3" {
    bucket = "tofu-state"
    key    = "cloud/iac/prod/tfstate"
  }
}
