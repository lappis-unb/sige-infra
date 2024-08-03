
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


data "terraform_remote_state" "gl_remote_state" {
  backend = "http"
  config = {
    username = var.gl_username
    password = var.gl_token
    address  = var.remote_state_address
    lock_address = var.remote_lock_address
    unlock_address = var.remote_unlock_address
    lock_method = "POST"
    unlock_method = "DELETE"
    retry_wait_max = 3
  }
}

