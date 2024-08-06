# =============================================================================
# DNS config Digital Ocean

resource "digitalocean_domain" "domain" {
  name = var.do_domain
}

resource "digitalocean_record" "sige" {
  domain = digitalocean_domain.domain.id
  type   = "A"
  name   = "sige"
  value  = digitalocean_droplet.api_homolog.ipv4_address
}

resource "digitalocean_record" "api_sige" {
  domain = digitalocean_domain.domain.id
  type   = "CNAME"
  name   = "api.sige"
  value  = "${digitalocean_record.sige.fqdn}."
}

resource "digitalocean_record" "traefik_sige" {
  domain = digitalocean_domain.domain.id
  type   = "CNAME"
  name   = "traefik.sige"
  value  = "${digitalocean_record.sige.fqdn}."
}

