data "cloudflare_zone" "torin_reine" {
  name = "torinreine.com"
}

resource "cloudflare_ruleset" "torin_reine_site_redirect" {
  zone_id     = "${data.cloudflare_zone.torin_reine.id}"
  name        = "EE Site Page Redirect"
  description = "Total domain redirection to eearomatics.com page info"
  kind        = "zone"
  phase       = "http_request_dynamic_redirect"

  rules {
    action = "redirect"
    action_parameters {
      from_value {
        status_code = 307
        target_url {
          value = "https://www.eearomatics.com/torin-reine-high-priestess"
        }
        preserve_query_string = true
      }
    }
    expression  = "(http.host eq \"torinreine.com\")"
    description = "Redirect visitors to Torin Reine page until external site ready"
    enabled     = true
  }
}
