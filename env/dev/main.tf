provider "azurerm" {
  features {}
}

terraform {
  backend "azurerm" {
    resource_group_name  = "testgroup"
    storage_account_name = "sunstore"
    container_name       = "suncontainer"
    key                  = "dev.tfstate"

  }
}

module "rg" {
  source   = "../../modules/resource_group"
  name     = var.rgname
  location = var.location
}
module "network" {
  source    = "../../modules/network"
  vnet_name = var.vnet_name
  subnet_name = var.subnet_name
  location  = var.location
  rgname   = var.rgname
}
#comment
