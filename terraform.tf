terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.107"
    }
  }
  backend "azurerm" {
    resource_group_name  = "tfstaterg"
    storage_account_name = "tfstatesa1645634"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
}