output "certificate_fqdn" {
  value = module.lets_encrypt.certificate_fqdn
}

output "certificate_password" {
  value     = module.lets_encrypt.certificate_password
  sensitive = true
}
