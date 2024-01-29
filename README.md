# Terraform Azure Networking Module

## Overview

Welcome to the terraform-azure-networking module! This repository, part of the IaC Best Practices Workshop, focuses on modular design and reusability in Terraform, specifically for Azure networking resources. It aims to provide a foundational understanding of structuring Terraform code modularly for easier management, scalability, and reusability.

## Module Description

The `terraform-azure-networking` module is designed to create and manage Azure networking components, including virtual networks, subnets, and other related resources. It's structured to demonstrate best practices in Terraform module development.

## Workshop Exercise

### Objectives

- Understand and apply best practices in Terraform module design.
- Create a reusable Terraform module for Azure networking resources.
- Learn to define and use input variables and module outputs.

### Tasks

1. **Explore the Module:**
   - Review the existing code to understand the module's structure.
   - Identify the components (variables, outputs, resources).

2. **Modify the Module:**
   - Enhance the module by adding components like Network Security Groups or Route Tables.
   - Update variables and outputs accordingly.

3. **Test the Module:**
   - Use the module in `./usage/main.tf` to create the networking infrastructure.

## Prerequisites

- Basic understanding of Terraform and Azure.
- Terraform installed on your machine.
- Access to an Azure account with necessary permissions.
- Azure CLI installed and configured (`az login`).

## Usage

To use this module, clone it and navigate to the `usage` directory:

```sh
git clone git@github.com:{your-username}/terraform-version-pinning.git
cd terraform-version-pinning
cd ./usage
```

Explore the folder content. In `main.tf`, you'll find the following code:

```hcl
module "azure_network" {
  source = "../."

  location            = "uksouth"
  resource_group      = "iac-workshop-networking"
  vnet_name           = "iac-workshop-networking"
  subnet_name         = "iac-workshop-networking"
}
```

This demonstrates how you can reference any local module by its folder.

Next, provision the resources with:

```bash
terraform init
terraform plan
```

You should see an output indicating that 3 resources will be created.

## Workshop Clean Up

To avoid unwanted charges, destroy the created resources after the workshop:

```bash
terraform destroy
```

When prompted, confirm with `yes`. This will remove all the resources you created.
