## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | ~> 3.0 |
| <a name="requirement_random"></a> [random](#requirement\_random) | ~> 3.0 |
| <a name="requirement_tls"></a> [tls](#requirement\_tls) | ~> 3.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_lets_encrypt"></a> [lets\_encrypt](#module\_lets\_encrypt) | ../../ | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cert_name"></a> [cert\_name](#input\_cert\_name) | Name of cert stored in the key vault | `string` | n/a | yes |
| <a name="input_common_name"></a> [common\_name](#input\_common\_name) | The DNS common name | `string` | n/a | yes |
| <a name="input_dns_zone_name"></a> [dns\_zone\_name](#input\_dns\_zone\_name) | The name of the DNS Zone | `string` | n/a | yes |
| <a name="input_dns_zone_rg_name"></a> [dns\_zone\_rg\_name](#input\_dns\_zone\_rg\_name) | The name of the resource group containing the DNS Zone | `string` | n/a | yes |
| <a name="input_key_vault_name"></a> [key\_vault\_name](#input\_key\_vault\_name) | The name of the key vault to hold certificates | `string` | n/a | yes |
| <a name="input_key_vault_resource_group"></a> [key\_vault\_resource\_group](#input\_key\_vault\_resource\_group) | The name of the key vault to resource group | `string` | n/a | yes |
| <a name="input_letsencrypt_hostname"></a> [letsencrypt\_hostname](#input\_letsencrypt\_hostname) | Lets Encrypt api either production=acme-v02 or staging=acme-staging-v02 | `string` | n/a | yes |
| <a name="input_location"></a> [location](#input\_location) | The location to create the resources in | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_certificate_fqdn"></a> [certificate\_fqdn](#output\_certificate\_fqdn) | n/a |
| <a name="output_certificate_name"></a> [certificate\_name](#output\_certificate\_name) | Certificate name |
| <a name="output_certificate_password"></a> [certificate\_password](#output\_certificate\_password) | n/a |
| <a name="output_key_vault_name"></a> [key\_vault\_name](#output\_key\_vault\_name) | Key vault name |
| <a name="output_letsencrypt_api"></a> [letsencrypt\_api](#output\_letsencrypt\_api) | Lets Encrypt API staging or prod |
| <a name="output_resource_group_name"></a> [resource\_group\_name](#output\_resource\_group\_name) | Key vault resource group name |
