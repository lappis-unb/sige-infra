variable "do_token" {
  description = "Digital Ocean Token"
  type        = string
}

variable "ssh_key" {
  description = "SSH Key ID to access the Droplets"
  type        = string
  default     = ""
}

variable "region" {
  description = "DigitalOcean region - San Francisco"
  type        = string
  default     = "sfo3"
}

