# This file defines the outputs that your module will return after it is applied.
# These can be useful for other Terraform configurations that use your module.

output "virtual_network_id" {
  value       = azurerm_virtual_network.vnet.id
  description = "The ID of the virtual network"
}

output "subnet_id" {
  value       = azurerm_subnet.subnet.id
  description = "The ID of the subnet"
}
