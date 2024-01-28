# Terraform Azure Networking Module

## Overview

Welcome to the terraform-azure-networking module! This repository is part of the IaC Best Practices Workshop, focusing on modular design and reusability in Terraform, specifically tailored for Azure networking resources.

This module aims to provide a foundational understanding of how to structure Terraform code in a modular way, enabling easier management, scalability, and reusability of the codebase.

## Module Description

The `terraform-azure-networking`` module is designed to create and manage Azure networking components, including virtual networks, subnets, and other related resources.

The module is structured to demonstrate best practices in Terraform module development.

## Workshop Exercise

### Objectives

- Understand and apply best practices in Terraform module design.
- Create a reusable Terraform module for Azure networking resources.
- Learn to define and use input variables and module outputs.

## Tasks

1. Explore the Module:
   - Review the existing code to understand the module's structure.
   - Identify the components of the module (variables, outputs, resources).
2. Modify the Module:
   - Enhance the module by adding additional networking components, such as Network Security Groups or Route Tables.
   - Update variables and outputs accordingly.
3. Test the Module:
   - Use the module in a main.tf file to create a networking infrastructure.
   - Validate the execution by running `terraform init`, `terraform plan`, and `terraform apply`.
4. Document Your Changes:
   - Update this `README.md` to reflect the changes you made to the module.
   - Ensure clear documentation for future users of your module.

## Prerequisites

- Basic understanding of Terraform and Azure.
- Terraform installed on your machine.
- Access to an Azure account with necessary permissions.

## Usage

To use this module in your Terraform configuration, add the following:

```hcl
module "azure_network" {
  source = "." # module is local

  location            = "uksouth"
  resource_group_name = "iac-workshop"
  vnet_name           = "iac-workshop"
  subnet_name         = "iac-workshop"
}
```

Replace `./path/to/this/module` with the actual path to this module.

## Contributing

We encourage workshop participants to contribute to this module! Please follow the guidelines outlined in the workshop for making changes and submitting pull requests.

License
[MIT]
