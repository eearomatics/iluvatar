resource "cloudflare_record" "root_parking_page_ip" {
  name    = "torinreine.com"
  proxied = true
  ttl     = 1
  type    = "A"
  content = "162.255.119.89"
  zone_id = data.cloudflare_zone.torin_reine.id
}

resource "cloudflare_record" "root_parking_page_cname" {
  name    = "www"
  proxied = true
  ttl     = 1
  type    = "CNAME"
  content = "parkingpage.namecheap.com"
  zone_id = data.cloudflare_zone.torin_reine.id
}

resource "cloudflare_record" "zoho_mail_verification" {
  comment = "Zoho Mail verification"
  name    = "torinreine.com"
  proxied = false
  ttl     = 1
  type    = "TXT"
  content = "zoho-verification=zb34558348.zmverify.zoho.com"
  zone_id = data.cloudflare_zone.torin_reine.id
}
