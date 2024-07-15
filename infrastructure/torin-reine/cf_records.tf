resource "cloudflare_record" "terraform_managed_resource_610fc63c92ef90ecea34f371dc18661d" {
  name    = "torinreine.com"
  proxied = true
  ttl     = 1
  type    = "A"
  value   = "162.255.119.89"
  zone_id = "6396e3ac4ad45f161fa18d65e55161d7"
}

resource "cloudflare_record" "terraform_managed_resource_638d3733778e66dff0a380f8057c80a2" {
  name    = "www"
  proxied = true
  ttl     = 1
  type    = "CNAME"
  value   = "parkingpage.namecheap.com"
  zone_id = "6396e3ac4ad45f161fa18d65e55161d7"
}

resource "cloudflare_record" "terraform_managed_resource_a439621602d4614f8b57b838b225ceb5" {
  name     = "torinreine.com"
  priority = 10
  proxied  = false
  ttl      = 1
  type     = "MX"
  value    = "eforward3.registrar-servers.com"
  zone_id  = "6396e3ac4ad45f161fa18d65e55161d7"
}

resource "cloudflare_record" "terraform_managed_resource_eaa994a44605a8104f2218fee3b366bd" {
  name     = "torinreine.com"
  priority = 10
  proxied  = false
  ttl      = 1
  type     = "MX"
  value    = "eforward2.registrar-servers.com"
  zone_id  = "6396e3ac4ad45f161fa18d65e55161d7"
}

resource "cloudflare_record" "terraform_managed_resource_0be53821b02e7f11f7123236629d5b35" {
  name     = "torinreine.com"
  priority = 10
  proxied  = false
  ttl      = 1
  type     = "MX"
  value    = "eforward1.registrar-servers.com"
  zone_id  = "6396e3ac4ad45f161fa18d65e55161d7"
}

resource "cloudflare_record" "terraform_managed_resource_a8385d496e79e1622070419bf83fc5db" {
  name     = "torinreine.com"
  priority = 15
  proxied  = false
  ttl      = 1
  type     = "MX"
  value    = "eforward4.registrar-servers.com"
  zone_id  = "6396e3ac4ad45f161fa18d65e55161d7"
}

resource "cloudflare_record" "terraform_managed_resource_55fe9d2b2d57a5cf071c49aa3c232d19" {
  name     = "torinreine.com"
  priority = 20
  proxied  = false
  ttl      = 1
  type     = "MX"
  value    = "eforward5.registrar-servers.com"
  zone_id  = "6396e3ac4ad45f161fa18d65e55161d7"
}

resource "cloudflare_record" "terraform_managed_resource_90df8b4858b949b5e67989dd83c37079" {
  name    = "torinreine.com"
  proxied = false
  ttl     = 1
  type    = "TXT"
  value   = "\"v=spf1 include:spf.efwd.registrar-servers.com ~all\""
  zone_id = "6396e3ac4ad45f161fa18d65e55161d7"
}

