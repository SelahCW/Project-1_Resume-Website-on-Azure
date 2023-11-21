# Introduction
A static website deployed on the cloud using Terraform and Azure Static Web App that displays my resume.

# Getting Started
* Install [Terraform](https://learn.hashicorp.com/terraform/getting-started/install)

<p>An Azure subscription is required to run this code.<br>
To run the project on your IDE of choice, you must log into your Azure account:</p>

`az login`

# Build and Test

## Modifying Website
The files required for the website have been configured to automatically deploy to the Static Web App resource. Any required changes to the website's HTML & CSS files should be made prior to resource deployment.

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
# Introduction
A static website deployed on the cloud using Terraform and Azure Static Web App that displays my resume.

# Getting Started

* Install [Terraform](https://learn.hashicorp.com/terraform/getting-started/install)

<p>An Azure subscription is required to run this code.<br>
To run the project on your IDE of choice, you must log into your Azure account:</p>

`az login`

# Build and Test

## Modifying Website
The files required for the website have been configured to automatically deploy to the Static Web App resource. Any required changes to the website's HTML & CSS files should be made prior to resource deployment.

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







<!-- END_TF_DOCS -->
