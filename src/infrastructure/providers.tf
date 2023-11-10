terraform {
  required_version = ">=0.12"

  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "~>3.77.0"
    }
    random = {
      source = "hashicorp/random"
      version = "~>3.0"
    }
  }
  /*backend "azurerm" {
  }*/
}

provider "azurerm" {
  features {}
}
