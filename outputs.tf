output "certificate_fqdn" {
  value = acme_certificate.cert.common_name
}

output "certificate_password" {
  value     = acme_certificate.cert.certificate_p12_password
  sensitive = true
}
