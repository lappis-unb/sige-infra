
terraform {
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "2.39.2"
    }
  }
}

variable "do_token" {}

provider "digitalocean" {
  token = var.do_token
}


resource "digitalocean_droplet" "api_homolog" {
  name     = "sige-api-homolog"
  image    = "debian-11-x64"
  region   = "sfo3"
  size     = "s-1vcpu-1gb-35gb-intel"
}
