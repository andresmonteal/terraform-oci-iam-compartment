# Terraform OCI IAM Compartment Module

This Terraform module manages the creation of Oracle Cloud Infrastructure (OCI) Identity and Access Management (IAM) compartments. It supports multiple levels of compartment hierarchy.

## Usage

To use this module, include the following in your Terraform configuration:

```hcl
module "compartments" {
  source = "<module-source-path>"

  tenancy_ocid = var.tenancy_ocid
  cmp_lvl1     = var.cmp_lvl1
  cmp_lvl2     = var.cmp_lvl2
  cmp_lvl3     = var.cmp_lvl3
  cmp_lvl4     = var.cmp_lvl4
  cmp_lvl5     = var.cmp_lvl5
  cmp_lvl6     = var.cmp_lvl6
}