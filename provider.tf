# Set the variable value in *.tfvars file
# or using -var="do_token=..." CLI option
variable "do_token" {}
variable "pub_key" {}
variable "pvt_key" {}
variable "ssh_fingerprint" {}

terraform {
  required_providers {
    digitalocean = {
      source = "digitalocean/digitalocean"
      version = "2.3.0"
    }
  }
}

# Configure the DigitalOcean Provider
provider "digitalocean" {
  token = "${var.do_token}"
}

