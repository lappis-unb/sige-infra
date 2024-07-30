resource "digitalocean_ssh_key" "sige_ssh_key" {
  name       = "sige-ssh-key"
  public_key = var.ssh_key
}

resource "digitalocean_droplet" "api_homolog" {
  name     = "sige-api-homolog"
  image    = "debian-11-x64"
  region   = "sfo3"
  size     = "s-1vcpu-1gb-35gb-intel"
  ssh_keys = [digitalocean_ssh_key.sige_ssh_key.fingerprint]
}

resource "digitalocean_project" "lappis_energy" {
  name        = "Lappis Energy Projects"
  description = "Projects related to energy"
  resources   = [digitalocean_droplet.api_homolog.urn]
}
