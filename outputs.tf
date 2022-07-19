output "certificate_fqdn" {
  description = "The common name for the lets encrypt cert(FQDN)"
  value       = acme_certificate.cert.common_name
}

output "certificate_password" {
  description = "Password required to use the certificate"
  value       = acme_certificate.cert.certificate_p12_password
  sensitive   = true
}

output "resource_group_name" {
  description = "Key vault resource group name"
  value       = var.key_vault.resource_group_name
}

output "key_vault_name" {
  description = "Key vault name"
  value       = var.key_vault.name
}

output "certificate_name" {
  description = "Certificate name"
  value       = var.cert_name
}

output "letsencrypt_api" {
  description = "Lets Encrypt API staging or prod"
  value       = var.letsencrypt_hostname
}
