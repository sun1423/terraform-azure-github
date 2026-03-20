terraform {
  backend "azurerm" {
    resource_group_name  = "testgroup"
    storage_account_name = "sunstore"
    container_name       = "suncontainer"
    key                  = "terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = var.rgn
  location = var.loc
}
resource "azurerm_storage_account" "storage" {
  name                     = var.storac
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = var.account_tier
  account_replication_type = var.account_rep_type
}
