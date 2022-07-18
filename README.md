<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_acme"></a> [acme](#requirement\_acme) | ~> 2.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_acme"></a> [acme](#provider\_acme) | 2.10.0 |
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | 3.14.0 |
| <a name="provider_random"></a> [random](#provider\_random) | 3.3.2 |
| <a name="provider_tls"></a> [tls](#provider\_tls) | 3.4.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [acme_certificate.cert](https://registry.terraform.io/providers/vancluever/acme/latest/docs/resources/certificate) | resource |
| [acme_registration.reg](https://registry.terraform.io/providers/vancluever/acme/latest/docs/resources/registration) | resource |
| [azurerm_key_vault_certificate.certs](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/key_vault_certificate) | resource |
| [random_password.cert](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/password) | resource |
| [tls_private_key.private_key](https://registry.terraform.io/providers/hashicorp/tls/latest/docs/resources/private_key) | resource |
| [azurerm_key_vault.certs](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/key_vault) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cert_name"></a> [cert\_name](#input\_cert\_name) | Name of cert stored in the key vault | `string` | n/a | yes |
| <a name="input_common_name"></a> [common\_name](#input\_common\_name) | The value of the CN field of the certificate | `string` | n/a | yes |
| <a name="input_dns"></a> [dns](#input\_dns) | The name and resource group of DNS zone | <pre>object({<br>    zone_name    = string<br>    zone_rg_name = string<br>  })</pre> | n/a | yes |
| <a name="input_email"></a> [email](#input\_email) | The email used for the registration of the certificate | `string` | n/a | yes |
| <a name="input_key_vault"></a> [key\_vault](#input\_key\_vault) | n/a | <pre>object({<br>    name                = string<br>    resource_group_name = string<br>  })</pre> | n/a | yes |
| <a name="input_location"></a> [location](#input\_location) | The location to create the resources in | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_certificate_fqdn"></a> [certificate\_fqdn](#output\_certificate\_fqdn) | n/a |
| <a name="output_certificate_password"></a> [certificate\_password](#output\_certificate\_password) | n/a |
<!-- END_TF_DOCS -->

## Contributing

We use pre-commit hooks for validating the terraform format and maintaining the documentation automatically.
Install it with:

```shell
$ brew install pre-commit terraform-docs
$ pre-commit install
```

If you add a new hook make sure to run it against all files:
```shell
$ pre-commit run --all-files
```
