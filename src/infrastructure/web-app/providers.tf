terraform {
  required_version = ">=0.12"

  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "~>3.81.0"
    }
  }
  /*backend "azurerm" {
  }*/
}

provider "azurerm" {
  features {}
}
