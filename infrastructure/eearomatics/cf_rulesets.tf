resource "cloudflare_ruleset" "ruleset_resource_caching" {
  kind    = "zone"
  name    = "default"
  phase   = "http_request_cache_settings"
  zone_id = data.cloudflare_zone.eearomatics.id
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

