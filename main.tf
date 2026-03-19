terraform {
  backend "azurerm" {
    resource_group_name  = "sungroup"
    storage_account_name = "sunstore"
    container_name       = "suncontainer"
    key                  = "terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = "rg-terraform-demo"
  location = "Central India"
}
