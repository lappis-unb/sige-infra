
terraform {
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "2.39.2"
    }
  }
  backend "http" {
  }

}
provider "digitalocean" {
  token = var.do_token
}

