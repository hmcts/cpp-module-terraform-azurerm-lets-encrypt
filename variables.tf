variable "location" {
  type        = string
  description = "The location to create the resources in"
}

variable "common_name" {
  type        = string
  description = "The value of the CN field of the certificate"
}

variable "email" {
  type        = string
  description = "The email used for the registration of the certificate"
}

variable "dns" {
  type = object({
    zone_name    = string
    zone_rg_name = string
  })
  description = "The name and resource group of DNS zone"
}

variable "key_vault" {
  type = object({
    name                = string
    resource_group_name = string
  })
}

variable "cert_name" {
  type        = string
  description = "Name of cert stored in the key vault"
}
