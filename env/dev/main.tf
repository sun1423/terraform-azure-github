
terraform {
  backend "azurerm" {
    resource_group_name  = "testgroup"
    storage_account_name = "sunstore"
    container_name       = "suncontainer"
    key                  = "dev.tfstate"
  }
}
module "rg" {
  source   = "../../../modules/resource_group"
  name     = var.resource_group_name
  location = var.loc
}
