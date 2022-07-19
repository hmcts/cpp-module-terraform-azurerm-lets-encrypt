module "lets_encrypt" {
  source = "../../"

  location    = var.location
  common_name = var.common_name
  email       = "contact@${var.dns_zone_name}"

  dns = {
    zone_name    = var.dns_zone_name
    zone_rg_name = var.dns_zone_rg_name
  }

  key_vault = {
    name                = var.key_vault_name
    resource_group_name = var.key_vault_resource_group
  }
  cert_name            = var.cert_name
  letsencrypt_hostname = var.letsencrypt_hostname
}
