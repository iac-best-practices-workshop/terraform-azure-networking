provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "resource-group" {
  name     = var.resource_group
  location = var.location
}

resource "azurerm_virtual_network" "vnet" {
  resource_group_name = azurerm_resource_group.resource-group.name
  name                = var.vnet_name
  address_space       = var.address_space
  location            = var.location
}

resource "azurerm_subnet" "subnet" {
  resource_group_name = azurerm_resource_group.resource-group.name
  name                 = var.subnet_name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = var.subnet_prefixes
}
