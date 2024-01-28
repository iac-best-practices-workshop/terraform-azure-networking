##
# This file declare the variables that your module will use. 
# The values for these variables can be set when the module is used in a Terraform configuration.
##
# iac-workshop for example
variable "resource_group" {
  description = "Name of the resource group"
  type        = string
}

# iac-workshop for example
variable "vnet_name" {
  description = "Name of the virtual network"
  type        = string
}

variable "address_space" {
  description = "Address space for the virtual network"
  type        = list(string)
  default     = ["10.0.0.0/16"]
}

# uksouth for example
variable "location" {
  description = "Azure region in which to deploy the virtual network"
  type        = string
}


# iac-workshop for example
variable "subnet_name" {
  description = "Name of the subnet"
  type        = string
}

variable "subnet_prefixes" {
  description = "Address prefix for the subnet"
  type        = list(string)
  default     = ["10.0.1.0/24"]
}
