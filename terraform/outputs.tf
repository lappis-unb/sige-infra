output "droplet_ip" {
  value = digitalocean_droplet.api_homolog.ipv4_address
}

output "sige_fqdn" {
  value = digitalocean_record.sige.fqdn
}

output "api_sige_fqdn" {
  value = digitalocean_record.api_sige.fqdn
}

output "traefik_sige_fqdn" {
  value = digitalocean_record.traefik_sige.fqdn
}
