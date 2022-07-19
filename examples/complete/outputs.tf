output "certificate_fqdn" {
  value = module.lets_encrypt.certificate_fqdn
}

output "certificate_password" {
  value     = module.lets_encrypt.certificate_password
  sensitive = true
}

output "resource_group_name" {
  description = "Key vault resource group name"
  value       = module.lets_encrypt.resource_group_name
}

output "key_vault_name" {
  description = "Key vault name"
  value       = module.lets_encrypt.key_vault_name
}

output "certificate_name" {
  description = "Certificate name"
  value       = module.lets_encrypt.certificate_name
}

output "letsencrypt_api" {
  description = "Lets Encrypt API staging or prod"
  value       = module.lets_encrypt.letsencrypt_api
}
