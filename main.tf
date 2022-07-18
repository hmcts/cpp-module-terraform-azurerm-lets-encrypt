# Creates a private key in PEM format
resource "tls_private_key" "private_key" {
  algorithm = "RSA"
}

# Creates an account on the ACME server using the private key and an email
resource "acme_registration" "reg" {
  account_key_pem = tls_private_key.private_key.private_key_pem
  email_address   = var.email
}

# As the certificate will be generated in PFX a password is required
resource "random_password" "cert" {
  length  = 24
  special = true
}

# Gets a certificate from the ACME server
resource "acme_certificate" "cert" {
  account_key_pem          = acme_registration.reg.account_key_pem
  common_name              = var.common_name # test.megaloop.world
  certificate_p12_password = random_password.cert.result
  recursive_nameservers    = ["8.8.8.8:53"]

  dns_challenge {
    provider = "azure"

    config = {
      AZURE_RESOURCE_GROUP = var.dns.zone_rg_name
      AZURE_ZONE_NAME      = var.dns.zone_name
      AZURE_TTL            = 300
    }
  }
}

data "azurerm_key_vault" "certs" {
  name                = var.key_vault.name
  resource_group_name = var.key_vault.resource_group_name
}

resource "azurerm_key_vault_certificate" "certs" {
  name         = var.cert_name
  key_vault_id = data.azurerm_key_vault.certs.id

  certificate {
    contents = acme_certificate.cert.certificate_p12
    password = acme_certificate.cert.certificate_p12_password
  }
}
