resource "cloudflare_record" "square_a_record" {
  comment = "square"
  content = "199.34.228.175"
  name    = "torinreine.com"
  proxied = true
  ttl     = 1
  type    = "A"
  zone_id = data.cloudflare_zone.torin_reine.id
}

resource "cloudflare_record" "www_root_cname" {
  content = "torinreine.com"
  name    = "www"
  proxied = true
  ttl     = 1
  type    = "CNAME"
  zone_id = data.cloudflare_zone.torin_reine.id
}

resource "cloudflare_record" "zoho_mail_mx3" {
  content  = "mx3.zoho.com"
  name     = "torinreine.com"
  priority = 50
  proxied  = false
  ttl      = 1
  type     = "MX"
  zone_id  = data.cloudflare_zone.torin_reine.id
}

resource "cloudflare_record" "zoho_mail_mx2" {
  content  = "mx2.zoho.com"
  name     = "torinreine.com"
  priority = 20
  proxied  = false
  ttl      = 1
  type     = "MX"
  zone_id  = data.cloudflare_zone.torin_reine.id
}

resource "cloudflare_record" "zoho_mail_mx1" {
  content  = "mx.zoho.com"
  name     = "torinreine.com"
  priority = 10
  proxied  = false
  ttl      = 1
  type     = "MX"
  zone_id  = data.cloudflare_zone.torin_reine.id
}

resource "cloudflare_record" "google_search_console_verification" {
  comment = "Google Search Console Verification"
  content = "google-site-verification=vRyOC0rRQcXCPMuT_DZsTrtdwlNW_RKYJxDJ6QFGM6A"
  name    = "torinreine.com"
  proxied = false
  ttl     = 1
  type    = "TXT"
  zone_id = data.cloudflare_zone.torin_reine.id
}

resource "cloudflare_record" "zoho_mail_spf" {
  content = "v=spf1 include:zohomail.com ~all"
  name    = "torinreine.com"
  proxied = false
  ttl     = 1
  type    = "TXT"
  zone_id = data.cloudflare_zone.torin_reine.id
}

resource "cloudflare_record" "terraform_managed_resource_9beb9878f32992fe54e688c5bc430cc5" {
  comment = "Unknown verification record?"
  content = "8a063340-47d4-11ef-a188-4ba34efaaf07"
  name    = "torinreine.com"
  proxied = false
  ttl     = 1
  type    = "TXT"
  zone_id = data.cloudflare_zone.torin_reine.id
}

resource "cloudflare_record" "zoho_mail_verification" {
  comment = "Zoho Mail verification"
  content = "zoho-verification=zb34558348.zmverify.zoho.com"
  name    = "torinreine.com"
  proxied = false
  ttl     = 1
  type    = "TXT"
  zone_id = data.cloudflare_zone.torin_reine.id
}

resource "cloudflare_record" "zoho_mail_dkim" {
  content = "v=DKIM1; k=rsa; p=MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCUUWvK8DLhwclI6GOb5Aix0kAHZF1/qUUl5Q2o3ob0Oym/NpDmGK71RepnAkKPy9uQKUVKEk8Gdi7NkaDtvWKt0HM305SiimNfwUHBwLZl5lr5tDuNrdTSZFptR9LXmFiwz8oFZ0hWPv5lcElOnhAsDWk4uBG4+clJhO/bSEu9TwIDAQAB"
  name    = "zmail._domainkey"
  proxied = false
  ttl     = 1
  type    = "TXT"
  zone_id = data.cloudflare_zone.torin_reine.id
}

resource "cloudflare_record" "zoho_forms_mail_dkim" {
  comment = "Zoho Forms Email DKIM Verification"
  name    = "1422741997._domainkey"
  proxied = false
  ttl     = 1
  type    = "TXT"
  content = "k=rsa; p=MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAqgNYvujffxkBpWKFh2Pog61jbg1mQDUIIUuXYoHwDcSvthmYvfppcF5/X12OeNKJ3jw9/7qsTFO2f9GNKJZQ2TxkAuszO5n01/15DdzIu5RfRlvgaIml+SfY1ZLr5aJL0opM4znweLPAPcTywT3qoOjoiHxq96VlUrfRm6ivPKgSawjN/fwzmP9w7WcFWj1RYtfvZI7gvYY064j95Ji90bgUHzWGypFYwxSCymV6tdRXvwuQKbWu7KBZ8nf+OAmmz1EB2tMHH2dPU6yAeARfQbZ+++8R/2+FjwBknlAP37qUB7FUeK7Qom4dErWE3h3cyEE8cwSWOJpalHzSAWa61QIDAQAB"
  zone_id = data.cloudflare_zone.torin_reine.id
}

resource "cloudflare_record" "zoho_forms_cname" {
  name    = "forms"
  content = "forms.cs.zohohost.com"
  proxied = false
  ttl     = 1
  type    = "CNAME"
  zone_id = data.cloudflare_zone.torin_reine.id
}
