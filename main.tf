provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = "Githubtest"
  location = "Central India"
}
