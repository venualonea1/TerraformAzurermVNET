data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}

resource "azurerm_virtual_network" "this" {
  location = data.azurerm_resource_group.this.location
  name = var.virtual_network.vnet_name
  address_space = var.virtual_network.address_space
  resource_group_name = data.azurerm_resource_group.this.name
}
resource "azurerm_subnet" "this" {
  name = var.virtual_network.subnet_name
  resource_group_name =data.azurerm_resource_group.this.name
  virtual_network_name =azurerm_virtual_network.this.name
  address_prefixes =var.virtual_network.address_prefixes


}
