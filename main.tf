// Copyright (c) 2018, 2021, Oracle and/or its affiliates.

########################
# Compartment
########################

locals {
  default_freeform_tags = {
    terraformed = "Please do not edit manually"
    module      = "oracle-terraform-oci-iam-compartment"
  }
}

resource "oci_identity_compartment" "lvl1" {
  #Required
  for_each = var.cmp_lvl1

  compartment_id = var.tenancy_ocid
  name           = each.key
  description    = lookup(each.value, "description", each.key)
  enable_delete  = lookup(each.value, "enable_delete", false)

  #Optional
  freeform_tags = merge(lookup(each.value, "freeform_tags", {}), local.default_freeform_tags)
  defined_tags  = lookup(each.value, "defined_tags", {})
}

resource "oci_identity_compartment" "lvl2" {
  #Required
  for_each = var.cmp_lvl2

  compartment_id = oci_identity_compartment.lvl1[each.value["parent"]].id
  name           = each.key
  description    = lookup(each.value, "description", each.key)
  enable_delete  = lookup(each.value, "enable_delete", false)

  #Optional
  freeform_tags = merge(lookup(each.value, "freeform_tags", {}), local.default_freeform_tags)
  defined_tags  = lookup(each.value, "defined_tags", {})
}

resource "oci_identity_compartment" "lvl3" {
  #Required
  for_each = var.cmp_lvl3

  compartment_id = oci_identity_compartment.lvl2[each.value["parent"]].id
  name           = each.key
  description    = lookup(each.value, "description", each.key)
  enable_delete  = lookup(each.value, "enable_delete", false)

  #Optional
  freeform_tags = merge(lookup(each.value, "freeform_tags", {}), local.default_freeform_tags)
  defined_tags  = lookup(each.value, "defined_tags", {})
}

resource "oci_identity_compartment" "lvl4" {
  #Required
  for_each = var.cmp_lvl4

  compartment_id = oci_identity_compartment.lvl3[each.value["parent"]].id
  name           = each.key
  description    = lookup(each.value, "description", each.key)
  enable_delete  = lookup(each.value, "enable_delete", false)

  #Optional
  freeform_tags = merge(lookup(each.value, "freeform_tags", {}), local.default_freeform_tags)
  defined_tags  = lookup(each.value, "defined_tags", {})
}