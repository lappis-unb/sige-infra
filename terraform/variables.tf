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

variable "host_path_file" {
  description = "Path to the host file"
  type        = string
  default     = "../ansible/hosts"
}


variable "gl_username" {
  description = "Gitlab username to query remote state"
  type        = string
}

variable "gl_token" {
  description = "GitLab access token to query remote state"
  type        = string
}

variable "remote_state_address" {
  description = "Gitlab Address the state"
  type        = string
}

variable "remote_lock_address" {
  description = "Gitlab Address to lock the state"
  type        = string
}


variable "remote_unlock_address" {
  description = "Gitlab Address to unlock the state"
  type        = string
}
