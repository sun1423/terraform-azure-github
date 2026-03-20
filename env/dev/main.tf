provider "azurerm" {
  features {}
}

terraform {
  backend "azurerm" {
    resource_group_name  = "rg-tf-state"
    storage_account_name = "tfstatelearning12345"
    container_name       = "tfstate"
    key                  = "dev.tfstate"
  }
}

module "rg" {
  source   = "../../modules/resource_group"
  name     = var.resource_group_name
  location = var.location
}
