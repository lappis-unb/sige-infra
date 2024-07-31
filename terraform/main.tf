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

resource "null_resource" "update_host_file" {
  triggers = {
    droplet_ip = digitalocean_droplet.api_homolog.ipv4_address
    host_path  = var.host_path_file
  }

  provisioner "local-exec" {
    when    = create
    command = "sed -i '/^\\[homolog\\]$/ {n;s/.*/${self.triggers.droplet_ip}/}' ${self.triggers.host_path}"
  }

  provisioner "local-exec" {
    when    = destroy
    command = "sed -i '/^\\[homolog\\]$/ {n; s/.*/127.0.0.1/}' ${self.triggers.host_path}"
  }
}

resource "digitalocean_project" "lappis_energy" {
  name        = "Lappis Energy Projects"
  description = "Projects related to energy"
  resources   = [digitalocean_droplet.api_homolog.urn]
}
