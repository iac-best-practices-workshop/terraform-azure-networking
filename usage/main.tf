module "azure_network" {
  source = "github.com/iac-best-practices-workshow/terraform-azure-networking?ref=main"

  location            = "uksouth"
  resource_group      = "iac-workshop"
  vnet_name           = "iac-workshop"
  subnet_name         = "iac-workshop"
}
