resource "cloudflare_record" "b2b_catalog_canva_site_hosting_ip" {
  comment = "Canva site hosting for B2B Catalog"
  name    = "catalog"
  proxied = false
  tags    = ["canva"]
  ttl     = 1
  type    = "A"
  value   = "103.169.142.0"
  zone_id = "${data.cloudflare_zone.eearomatics.id}"
}

resource "cloudflare_record" "terraform_managed_resource_67e75313b096bcbfea143ec9d774b761" {
  comment = "Square Online site setup"
  name    = "eearomatics.com"
  proxied = true
  tags    = ["ecommerce", "square"]
  ttl     = 1
  type    = "A"
  value   = "199.34.228.164"
  zone_id = "${data.cloudflare_zone.eearomatics.id}"
}

resource "cloudflare_record" "terraform_managed_resource_8e25f9cb39d722b8e939b17585be9bb4" {
  comment = "Canva site hosting for B2B Catalog"
  name    = "www.catalog"
  proxied = false
  tags    = ["canva"]
  ttl     = 1
  type    = "A"
  value   = "103.169.142.0"
  zone_id = "${data.cloudflare_zone.eearomatics.id}"
}

resource "cloudflare_record" "terraform_managed_resource_5bdd1de23d3455cef1bc015fb18774c4" {
  comment = "Square Online site setup"
  name    = "www"
  proxied = true
  tags    = ["ecommerce", "square"]
  ttl     = 1
  type    = "A"
  value   = "199.34.228.164"
  zone_id = "${data.cloudflare_zone.eearomatics.id}"
}

resource "cloudflare_record" "terraform_managed_resource_af79169d16dccb14f8ad9d0d784e0c38" {
  comment = "Zoho Bookings for EE Aromatics"
  name    = "bookings"
  proxied = false
  tags    = ["bookings", "zoho"]
  ttl     = 1
  type    = "CNAME"
  value   = "bookings.cs.zohohost.com"
  zone_id = "${data.cloudflare_zone.eearomatics.id}"
}

resource "cloudflare_record" "terraform_managed_resource_428642c33d71314703924433906df35b" {
  name    = "dks6yc501"
  proxied = false
  ttl     = 1
  type    = "CNAME"
  value   = "zhs.zohosites.com"
  zone_id = "${data.cloudflare_zone.eearomatics.id}"
}

resource "cloudflare_record" "terraform_managed_resource_5b8d06124fd6636885db9cffde6f2bbb" {
  name    = "old"
  proxied = false
  ttl     = 1
  type    = "CNAME"
  value   = "zhs.zohosites.com"
  zone_id = "${data.cloudflare_zone.eearomatics.id}"
}

resource "cloudflare_record" "terraform_managed_resource_f42d72416dfa0491a671cfde79cf4d09" {
  comment  = "Zoho Mail Domain Mail Configuration"
  name     = "eearomatics.com"
  priority = 10
  proxied  = false
  tags     = ["email", "zoho"]
  ttl      = 1
  type     = "MX"
  value    = "mx.zoho.com"
  zone_id  = "17fe7c2812b92f8c8d25f893728c18ee"
}

resource "cloudflare_record" "terraform_managed_resource_0b62adf4cef63abe50b024d14ee0961c" {
  comment  = "Zoho Mail Domain Mail Configuration"
  name     = "eearomatics.com"
  priority = 20
  proxied  = false
  tags     = ["email", "zoho"]
  ttl      = 1
  type     = "MX"
  value    = "mx2.zoho.com"
  zone_id  = "17fe7c2812b92f8c8d25f893728c18ee"
}

resource "cloudflare_record" "terraform_managed_resource_675178eee68f015fe9d5c7e26bcd41bd" {
  comment  = "Zoho Mail Domain Mail Configuration"
  name     = "eearomatics.com"
  priority = 50
  proxied  = false
  tags     = ["email", "zoho"]
  ttl      = 1
  type     = "MX"
  value    = "mx3.zoho.com"
  zone_id  = "17fe7c2812b92f8c8d25f893728c18ee"
}

resource "cloudflare_record" "terraform_managed_resource_5ee4a796672cf0ec80ec31caf5fb2dec" {
  comment = "Zoho Commerce Email DKIM Verification"
  name    = "1522905413783._domainkey"
  proxied = false
  tags    = ["commerce", "email", "security", "zoho"]
  ttl     = 1
  type    = "TXT"
  value   = "k=rsa; p=MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCr6KMgdxxgg7oT3ulMwPJs9RXgXDrI9UWU118pHEMohl3UbL3Jwp4oxp/9N3thh/3WCJnYV134zbEVolZwqaT3JsFEq/mQ/RpW/JnOZ3rnxqJPurb2bcfJol4SDxiWVObzHX31xnANzFcXnq1/5dMK5QvW4Jh7n0fm4+4ywqiy2QIDAQAB"
  zone_id = "${data.cloudflare_zone.eearomatics.id}"
}

resource "cloudflare_record" "terraform_managed_resource_c51fa2ed9ac8bd3ff558f35b8d48ff34" {
  comment = "Zoho Campaigns Mail DKIM Verfication"
  name    = "71531._domainkey.notify"
  proxied = false
  tags    = ["campaigns", "email", "security", "zoho"]
  ttl     = 1
  type    = "TXT"
  value   = "k=rsa; p=MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCywSAcPezHGzylfC9VM6/Oz+WnnDEXyvMS1LeOu28j6jJdLgOu7bUtxRjv+jlrNh7mWWC3aNtSlUT8ySTPYozQszBRebl1u8oOomMCWQEPApLusTW0jhF1o49+lcDJyBIM21vOssC6o3azSWS2rOt6eTl5MRlX628kAnk7D8IlCwIDAQAB"
  zone_id = "${data.cloudflare_zone.eearomatics.id}"
}

resource "cloudflare_record" "terraform_managed_resource_2a39b8012eb510112cf433034a825269" {
  comment = "Zoho Campaigns Email Verifications"
  name    = "92033._domainkey"
  proxied = false
  tags    = ["campaigns", "email", "zoho"]
  ttl     = 1
  type    = "TXT"
  value   = "k=rsa; p=MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDDUJZB81LUEuics5y1yXBv1afJ5KyLebBLeqQW8docEMn+N21hmMqm0XJwimJnvADOVOH81isNERv+jgMS2HMxXud6mFUvzFqATl/ophXXPB65DL2aZkhcTtVk2PpDPqM/s81PsS7epcVYQ5GS+ez+YladTkb8wSrD2OZYunGrRwIDAQAB"
  zone_id = "${data.cloudflare_zone.eearomatics.id}"
}

resource "cloudflare_record" "terraform_managed_resource_2574e23bb5ae39084c3f701144931354" {
  comment = "Canva site hosting for B2B Catalog"
  name    = "_canva-domain-verify.catalog"
  proxied = false
  tags    = ["canva"]
  ttl     = 1
  type    = "TXT"
  value   = "01217662-a2ce-438c-a514-2d6663cf78e6"
  zone_id = "${data.cloudflare_zone.eearomatics.id}"
}

resource "cloudflare_record" "terraform_managed_resource_2e8bd6e41a19158b43380a88463c649a" {
  comment = "DMARC configuration for Zoho"
  name    = "_dmarc"
  proxied = false
  tags    = ["email", "zoho"]
  ttl     = 1
  type    = "TXT"
  value   = "v=DMARC1; p=none; rua=mailto:dmarc@eearomatics.com; ruf=mailto:dmarc@eearomatics.com; sp=none; adkim=r; aspf=r"
  zone_id = "${data.cloudflare_zone.eearomatics.id}"
}

resource "cloudflare_record" "terraform_managed_resource_0ae7a6e39788cd28e83c6974815ef344" {
  name    = "_dmarc"
  proxied = false
  tags    = ["email", "security"]
  ttl     = 1
  type    = "TXT"
  value   = "\"v=DMARC1;  p=none; rua=mailto:5c60591fd7504541ad88d76d9227e2dd@dmarc-reports.cloudflare.net\""
  zone_id = "${data.cloudflare_zone.eearomatics.id}"
}

resource "cloudflare_record" "terraform_managed_resource_462c0aae4abcb67959853b95bbfd5f27" {
  comment = "Zoho Mail, Campaigns, and other Zoho product Email Verifications"
  name    = "eearomatics.com"
  proxied = false
  tags    = ["campaigns", "email", "security", "zoho"]
  ttl     = 1
  type    = "TXT"
  value   = "v=spf1 include:zcsend.net include:zohomail.com include:zoho.com ~all"
  zone_id = "${data.cloudflare_zone.eearomatics.id}"
}

resource "cloudflare_record" "terraform_managed_resource_3ac0401349f4bdb8a13b33455c5cb718" {
  comment = "Facebook domain verification"
  name    = "eearomatics.com"
  proxied = false
  tags    = ["facebook", "meta"]
  ttl     = 1
  type    = "TXT"
  value   = "facebook-domain-verification=5go2l4ua44qa7evnmwd27s6xhqmg92"
  zone_id = "${data.cloudflare_zone.eearomatics.id}"
}

resource "cloudflare_record" "terraform_managed_resource_bac09c5802dc463c6cfb7344995b3ae7" {
  comment = "Zoho Bookings for EE Aromatics"
  name    = "eearomatics.com"
  proxied = false
  tags    = ["bookings", "zoho"]
  ttl     = 1
  type    = "TXT"
  value   = "hagjq5e.bookings.cs.zohohost.com"
  zone_id = "${data.cloudflare_zone.eearomatics.id}"
}

resource "cloudflare_record" "terraform_managed_resource_df02dcd731c9487e37d790217e966993" {
  comment = "Zoho Mail Domain Ownership Verification"
  name    = "eearomatics.com"
  proxied = false
  tags    = ["email", "zoho"]
  ttl     = 1
  type    = "TXT"
  value   = "zoho-verification=zb82557634.zmverify.zoho.com"
  zone_id = "${data.cloudflare_zone.eearomatics.id}"
}

resource "cloudflare_record" "terraform_managed_resource_4e2215c246d4046583fc16d610167fcc" {
  comment = "Google Search Console Verification"
  name    = "eearomatics.com"
  proxied = false
  tags    = ["google"]
  ttl     = 1
  type    = "TXT"
  value   = "google-site-verification=F6fVoJk8enue0heCvwHRNXhS8vBvl2CEcNoYuVpwM-A"
  zone_id = "${data.cloudflare_zone.eearomatics.id}"
}

resource "cloudflare_record" "terraform_managed_resource_e095e992f43f001489a7e4d859268626" {
  comment = "Zoho Mail Domain Mail Configuration"
  name    = "zmail._domainkey"
  proxied = false
  tags    = ["email", "zoho"]
  ttl     = 1
  type    = "TXT"
  value   = "v=DKIM1; k=rsa; p=MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCTiRTAkh552NfxL/Zev9H+TffEzifWvQTG/qWGvlgDxCGgYzlXnCmR2rWMy57ZYPwcdWk4RRG0d1LNEEE2WNVdr4jn+dREonGGKLe4IIriDq70XzwfOMqhTfChyLHLBbr9b2NE6oUa/JPYvDLYlEcM3teCHjrxoRvMmToeBNvKgwIDAQAB"
  zone_id = "${data.cloudflare_zone.eearomatics.id}"
}

