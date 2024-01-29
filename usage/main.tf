module "azure_network" {
  source = "../."

  location            = "uksouth"
  resource_group      = "iac-workshop-networking"
  vnet_name           = "iac-workshop-networking"
  subnet_name         = "iac-workshop-networking"
}
