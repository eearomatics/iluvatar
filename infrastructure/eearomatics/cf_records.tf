resource "cloudflare_record" "b2b_catalog_canva_site_hosting_ip" {
  comment = "Canva site hosting for B2B Catalog"
  name    = "catalog"
  proxied = false
  tags    = ["canva"]
  ttl     = 1
  type    = "A"
  content = "103.169.142.0"
  zone_id = "${data.cloudflare_zone.eearomatics.id}"
}

resource "cloudflare_record" "square_site_root_record" {
  comment = "Square Online site setup"
  name    = "eearomatics.com"
  proxied = true
  tags    = ["ecommerce", "square"]
  ttl     = 1
  type    = "A"
  content   = "199.34.228.164"
  zone_id = "${data.cloudflare_zone.eearomatics.id}"
}

resource "cloudflare_record" "b2b_catalog_canva_site_hosting_www_ip" {
  comment = "Canva site hosting for B2B Catalog"
  name    = "www.catalog"
  proxied = false
  tags    = ["canva"]
  ttl     = 1
  type    = "A"
  content   = "103.169.142.0"
  zone_id = "${data.cloudflare_zone.eearomatics.id}"
}

resource "cloudflare_record" "square_site_www_record" {
  comment = "Square Online site setup"
  name    = "www"
  proxied = true
  tags    = ["ecommerce", "square"]
  ttl     = 1
  type    = "A"
  content   = "199.34.228.164"
  zone_id = "${data.cloudflare_zone.eearomatics.id}"
}

resource "cloudflare_record" "zoho_bookings_cname" {
  comment = "Zoho Bookings for EE Aromatics"
  name    = "bookings"
  proxied = false
  tags    = ["bookings", "zoho"]
  ttl     = 1
  type    = "CNAME"
  content   = "bookings.cs.zohohost.com"
  zone_id = "${data.cloudflare_zone.eearomatics.id}"
}

resource "cloudflare_record" "zoho_sites_cname" {
  name    = "dks6yc501"
  proxied = false
  ttl     = 1
  type    = "CNAME"
  content   = "zhs.zohosites.com"
  zone_id = "${data.cloudflare_zone.eearomatics.id}"
}

resource "cloudflare_record" "old_zoho_sites_cname" {
  name    = "old"
  proxied = false
  ttl     = 1
  type    = "CNAME"
  content   = "zhs.zohosites.com"
  zone_id = "${data.cloudflare_zone.eearomatics.id}"
}

resource "cloudflare_record" "zoho_mail_mx_10" {
  comment  = "Zoho Mail Domain Mail Configuration"
  name     = "eearomatics.com"
  priority = 10
  proxied  = false
  tags     = ["email", "zoho"]
  ttl      = 1
  type     = "MX"
  content  = "mx.zoho.com"
  zone_id  = "${data.cloudflare_zone.eearomatics.id}"
}

resource "cloudflare_record" "zoho_mail_mx_20" {
  comment  = "Zoho Mail Domain Mail Configuration"
  name     = "eearomatics.com"
  priority = 20
  proxied  = false
  tags     = ["email", "zoho"]
  ttl      = 1
  type     = "MX"
  content  = "mx2.zoho.com"
  zone_id  = "${data.cloudflare_zone.eearomatics.id}"
}

resource "cloudflare_record" "zoho_mail_mx_50" {
  comment  = "Zoho Mail Domain Mail Configuration"
  name     = "eearomatics.com"
  priority = 50
  proxied  = false
  tags     = ["email", "zoho"]
  ttl      = 1
  type     = "MX"
  content  = "mx3.zoho.com"
  zone_id  = "${data.cloudflare_zone.eearomatics.id}"
}

resource "cloudflare_record" "zoho_commerce_mail_dkim" {
  comment = "Zoho Commerce Email DKIM Verification"
  name    = "1522905413783._domainkey"
  proxied = false
  tags    = ["commerce", "email", "security", "zoho"]
  ttl     = 1
  type    = "TXT"
  content   = "k=rsa; p=MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCr6KMgdxxgg7oT3ulMwPJs9RXgXDrI9UWU118pHEMohl3UbL3Jwp4oxp/9N3thh/3WCJnYV134zbEVolZwqaT3JsFEq/mQ/RpW/JnOZ3rnxqJPurb2bcfJol4SDxiWVObzHX31xnANzFcXnq1/5dMK5QvW4Jh7n0fm4+4ywqiy2QIDAQAB"
  zone_id = "${data.cloudflare_zone.eearomatics.id}"
}

resource "cloudflare_record" "zoho_campaigns_mail_dkim" {
  comment = "Zoho Campaigns Mail DKIM Verfication"
  name    = "71531._domainkey.notify"
  proxied = false
  tags    = ["campaigns", "email", "security", "zoho"]
  ttl     = 1
  type    = "TXT"
  content   = "k=rsa; p=MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCywSAcPezHGzylfC9VM6/Oz+WnnDEXyvMS1LeOu28j6jJdLgOu7bUtxRjv+jlrNh7mWWC3aNtSlUT8ySTPYozQszBRebl1u8oOomMCWQEPApLusTW0jhF1o49+lcDJyBIM21vOssC6o3azSWS2rOt6eTl5MRlX628kAnk7D8IlCwIDAQAB"
  zone_id = "${data.cloudflare_zone.eearomatics.id}"
}

resource "cloudflare_record" "zoho_campaigns_mail_verification" {
  comment = "Zoho Campaigns Email Verifications"
  name    = "92033._domainkey"
  proxied = false
  tags    = ["campaigns", "email", "zoho"]
  ttl     = 1
  type    = "TXT"
  content   = "k=rsa; p=MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDDUJZB81LUEuics5y1yXBv1afJ5KyLebBLeqQW8docEMn+N21hmMqm0XJwimJnvADOVOH81isNERv+jgMS2HMxXud6mFUvzFqATl/ophXXPB65DL2aZkhcTtVk2PpDPqM/s81PsS7epcVYQ5GS+ez+YladTkb8wSrD2OZYunGrRwIDAQAB"
  zone_id = "${data.cloudflare_zone.eearomatics.id}"
}

resource "cloudflare_record" "canva_site_hosting_verification" {
  comment = "Canva site hosting for B2B Catalog"
  name    = "_canva-domain-verify.catalog"
  proxied = false
  tags    = ["canva"]
  ttl     = 1
  type    = "TXT"
  content   = "01217662-a2ce-438c-a514-2d6663cf78e6"
  zone_id = "${data.cloudflare_zone.eearomatics.id}"
}

resource "cloudflare_record" "zoho_mail_dmarc" {
  comment = "DMARC configuration for Zoho"
  name    = "_dmarc"
  proxied = false
  tags    = ["email", "zoho"]
  ttl     = 1
  type    = "TXT"
  content   = "v=DMARC1; p=none; rua=mailto:dmarc@eearomatics.com; ruf=mailto:dmarc@eearomatics.com; sp=none; adkim=r; aspf=r"
  zone_id = "${data.cloudflare_zone.eearomatics.id}"
}

resource "cloudflare_record" "zoho_mail_dmarc_cf" {
  name    = "_dmarc"
  proxied = false
  tags    = ["email", "security"]
  ttl     = 1
  type    = "TXT"
  content   = "\"v=DMARC1;  p=none; rua=mailto:5c60591fd7504541ad88d76d9227e2dd@dmarc-reports.cloudflare.net\""
  zone_id = "${data.cloudflare_zone.eearomatics.id}"
}

resource "cloudflare_record" "mail_spf" {
  comment = "Zoho Mail, Campaigns, and other Zoho product Email Verifications"
  name    = "eearomatics.com"
  proxied = false
  tags    = ["campaigns", "email", "security", "zoho"]
  ttl     = 1
  type    = "TXT"
  content   = "v=spf1 include:zcsend.net include:zohomail.com include:zoho.com ~all"
  zone_id = "${data.cloudflare_zone.eearomatics.id}"
}

resource "cloudflare_record" "facebook_verification" {
  comment = "Facebook domain verification"
  name    = "eearomatics.com"
  proxied = false
  tags    = ["facebook", "meta"]
  ttl     = 1
  type    = "TXT"
  content   = "facebook-domain-verification=5go2l4ua44qa7evnmwd27s6xhqmg92"
  zone_id = "${data.cloudflare_zone.eearomatics.id}"
}

resource "cloudflare_record" "zoho_bookings_verification" {
  comment = "Zoho Bookings for EE Aromatics"
  name    = "eearomatics.com"
  proxied = false
  tags    = ["bookings", "zoho"]
  ttl     = 1
  type    = "TXT"
  content   = "hagjq5e.bookings.cs.zohohost.com"
  zone_id = "${data.cloudflare_zone.eearomatics.id}"
}

resource "cloudflare_record" "zoho_mail_verification" {
  comment = "Zoho Mail Domain Ownership Verification"
  name    = "eearomatics.com"
  proxied = false
  tags    = ["email", "zoho"]
  ttl     = 1
  type    = "TXT"
  content   = "zoho-verification=zb82557634.zmverify.zoho.com"
  zone_id = "${data.cloudflare_zone.eearomatics.id}"
}

resource "cloudflare_record" "google_search_console_verification" {
  comment = "Google Search Console Verification"
  name    = "eearomatics.com"
  proxied = false
  tags    = ["google"]
  ttl     = 1
  type    = "TXT"
  content   = "google-site-verification=F6fVoJk8enue0heCvwHRNXhS8vBvl2CEcNoYuVpwM-A"
  zone_id = "${data.cloudflare_zone.eearomatics.id}"
}

resource "cloudflare_record" "zoho_mail_dkim" {
  comment = "Zoho Mail Domain Mail Configuration"
  name    = "zmail._domainkey"
  proxied = false
  tags    = ["email", "zoho"]
  ttl     = 1
  type    = "TXT"
  content   = "v=DKIM1; k=rsa; p=MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCTiRTAkh552NfxL/Zev9H+TffEzifWvQTG/qWGvlgDxCGgYzlXnCmR2rWMy57ZYPwcdWk4RRG0d1LNEEE2WNVdr4jn+dREonGGKLe4IIriDq70XzwfOMqhTfChyLHLBbr9b2NE6oUa/JPYvDLYlEcM3teCHjrxoRvMmToeBNvKgwIDAQAB"
  zone_id = "${data.cloudflare_zone.eearomatics.id}"
}

