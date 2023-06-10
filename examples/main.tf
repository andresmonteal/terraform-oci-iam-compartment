// Copyright (c) 2018, 2021, Oracle and/or its affiliates.

module "cmp" {
  source = "../"

  tenancy_ocid = var.tenancy_ocid
  cmp_lvl1     = var.cmp_lvl1
  cmp_lvl2     = var.cmp_lvl2
  cmp_lvl3     = var.cmp_lvl3
}