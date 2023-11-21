<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >=0.12 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | ~>3.81.0 |
## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | 3.81.0 |

## Resources

| Name | Type |
|------|------|
| [azurerm_resource_group.rg](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/resource_group) | resource |
| [azurerm_static_site.Selah_StaticSite](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/static_site) | resource |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_deployment_token"></a> [deployment\_token](#output\_deployment\_token) | The deployment token for the static site used by the Azure Static Web App |
<!-- END_TF_DOCS -->