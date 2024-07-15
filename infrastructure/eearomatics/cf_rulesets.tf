resource "cloudflare_ruleset" "terraform_managed_resource_e49c9fbe9f4547468d2132ea7881c23a" {
  kind    = "zone"
  name    = "default"
  phase   = "http_request_cache_settings"
  zone_id = "${data.cloudflare_zone.eearomatics.id}"
  rules {
    action = "set_cache_settings"
    action_parameters {
      cache = true
    }
    description = "Media sources"
    enabled     = true
    expression  = "(http.request.uri.path.extension in {\"js\" \"jpg\" \"png\" \"webp\" \"css\"})"
  }
}

