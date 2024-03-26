
# Introduction 
A static website deployed on the cloud using Terraform and a Microsoft Azure storage account that displays my resume.
(Made during Softchoice DevOps Engineer Co-Op)

# Getting Started
* Install [Terraform](https://learn.hashicorp.com/terraform/getting-started/install)

<p>An Azure subscription is required to run this code.<br>
To run the project on your IDE of choice, you must log into your Azure account:</p>

`az login`

# Build and Test

## Modifying Website
The files required for the website have been configured to automatically deploy to the storage account's `$web` storage container. Any required changes to the website's HTML & CSS files should be made prior to resource deployment.

## Deploying Storage Account
Create a remote state with:

> `terraform init`

Run the terraform validate command to validate the configuration files in your directory:

> `terraform validate`

Run terraform plan to verify the deployment, then terraform apply to deploy them:

> `terraform plan`<br>
> `terraform apply`

After executing the apply command, you will be prompted to confirm or decline the process, enter `yes`.

# Contribute
Contact [Selah Williams](mailto:selah.williams@softchoice.com) to contribute

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >=0.12 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | ~>3.77.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | 3.77.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_resource_group.rg](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/resource_group) | resource |
| [azurerm_storage_account.web_storage_account](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/storage_account) | resource |
| [azurerm_storage_blob.error404HTML](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/storage_blob) | resource |
| [azurerm_storage_blob.indexHTML](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/storage_blob) | resource |
| [azurerm_storage_blob.profile_picture](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/storage_blob) | resource |
| [azurerm_storage_blob.style404CSS](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/storage_blob) | resource |
| [azurerm_storage_blob.styleCSS](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/storage_blob) | resource |

## Inputs

No inputs.

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_primary_web_endpoint"></a> [primary\_web\_endpoint](#output\_primary\_web\_endpoint) | The primary web endpoint for the static website of the storage account |
<!-- END_TF_DOCS -->
