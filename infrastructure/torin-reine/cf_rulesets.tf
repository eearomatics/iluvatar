resource "cloudflare_ruleset" "terraform_managed_resource_80a03542ad964826a65b0bfbbc5f23d2" {
  kind    = "zone"
  name    = "default"
  phase   = "http_request_dynamic_redirect"
  zone_id = "6396e3ac4ad45f161fa18d65e55161d7"
  rules {
    action = "redirect"
    action_parameters {
      from_value {
        preserve_query_string = true
        status_code           = 307
        target_url {
          value = "https://www.eearomatics.com/torin-reine-high-priestess"
        }
      }
    }
    description = "EE Site Page Redirect"
    enabled     = true
    expression  = "true"
  }
}

