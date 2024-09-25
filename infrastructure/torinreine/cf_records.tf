resource "cloudflare_record" "terraform_managed_resource_87bb7134421c5b51839083451761fd7c" {
  comment = "square"
  content = "199.34.228.175"
  name    = "torinreine.com"
  proxied = true
  ttl     = 1
  type    = "A"
  zone_id = data.cloudflare_zone.torin_reine.id
}

resource "cloudflare_record" "terraform_managed_resource_028636cc125f4691984966439c11a5a3" {
  content = "torinreine.com"
  name    = "www"
  proxied = true
  ttl     = 1
  type    = "CNAME"
  zone_id = data.cloudflare_zone.torin_reine.id
}

resource "cloudflare_record" "terraform_managed_resource_5a0d1be55f277aca3cec6827413c154b" {
  content  = "mx3.zoho.com"
  name     = "torinreine.com"
  priority = 50
  proxied  = false
  ttl      = 1
  type     = "MX"
  zone_id  = data.cloudflare_zone.torin_reine.id
}

resource "cloudflare_record" "terraform_managed_resource_439bad8916c5810a3eb199e1b264282d" {
  content  = "mx2.zoho.com"
  name     = "torinreine.com"
  priority = 20
  proxied  = false
  ttl      = 1
  type     = "MX"
  zone_id  = data.cloudflare_zone.torin_reine.id
}

resource "cloudflare_record" "terraform_managed_resource_944d8cb15dccc440b8cc56b03245592d" {
  content  = "mx.zoho.com"
  name     = "torinreine.com"
  priority = 10
  proxied  = false
  ttl      = 1
  type     = "MX"
  zone_id  = data.cloudflare_zone.torin_reine.id
}

resource "cloudflare_record" "terraform_managed_resource_7f347e5ded539f4bb87a64328b55faf1" {
  comment = "Google Search Console Verification"
  content = "google-site-verification=vRyOC0rRQcXCPMuT_DZsTrtdwlNW_RKYJxDJ6QFGM6A"
  name    = "torinreine.com"
  proxied = false
  ttl     = 1
  type    = "TXT"
  zone_id = data.cloudflare_zone.torin_reine.id
}

resource "cloudflare_record" "terraform_managed_resource_143f8d9c6c892dd516352ff3c37ef541" {
  content = "v=spf1 include:zohomail.com ~all"
  name    = "torinreine.com"
  proxied = false
  ttl     = 1
  type    = "TXT"
  zone_id = data.cloudflare_zone.torin_reine.id
}

resource "cloudflare_record" "terraform_managed_resource_9beb9878f32992fe54e688c5bc430cc5" {
  content = "8a063340-47d4-11ef-a188-4ba34efaaf07"
  name    = "torinreine.com"
  proxied = false
  ttl     = 1
  type    = "TXT"
  zone_id = data.cloudflare_zone.torin_reine.id
}

resource "cloudflare_record" "terraform_managed_resource_dcec87ac468048b2845323c1ddc83380" {
  comment = "Zoho Mail verification"
  content = "zoho-verification=zb34558348.zmverify.zoho.com"
  name    = "torinreine.com"
  proxied = false
  ttl     = 1
  type    = "TXT"
  zone_id = data.cloudflare_zone.torin_reine.id
}

resource "cloudflare_record" "terraform_managed_resource_adf13b8c6835e25cc4d299efdeeef817" {
  content = "v=DKIM1; k=rsa; p=MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCUUWvK8DLhwclI6GOb5Aix0kAHZF1/qUUl5Q2o3ob0Oym/NpDmGK71RepnAkKPy9uQKUVKEk8Gdi7NkaDtvWKt0HM305SiimNfwUHBwLZl5lr5tDuNrdTSZFptR9LXmFiwz8oFZ0hWPv5lcElOnhAsDWk4uBG4+clJhO/bSEu9TwIDAQAB"
  name    = "zmail._domainkey"
  proxied = false
  ttl     = 1
  type    = "TXT"
  zone_id = data.cloudflare_zone.torin_reine.id
}

