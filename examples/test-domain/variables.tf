variable "location" {
  type        = string
  description = "The location to create the resources in"
}

variable "dns_zone_name" {
  type        = string
  description = "The name of the DNS Zone"
}

variable "dns_zone_rg_name" {
  type        = string
  description = "The name of the resource group containing the DNS Zone"
}

variable "common_name" {
  type        = string
  description = "The DNS common name"

}

variable "key_vault_name" {
  type        = string
  description = "The name of the key vault to hold certificates"
}

variable "key_vault_resource_group" {
  type        = string
  description = "The name of the key vault to resource group"
}

variable "cert_name" {
  type        = string
  description = "Name of cert stored in the key vault"
}

variable "letsencrypt_hostname" {
  type        = string
  description = "Lets Encrypt api either production=acme-v02 or staging=acme-staging-v02"
}
