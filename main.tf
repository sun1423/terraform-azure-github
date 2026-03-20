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
  name                     = "tfdemostore12345"
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}
