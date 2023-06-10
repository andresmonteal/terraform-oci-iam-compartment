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
  for_each = var.cmp_lvl1

  #Required
  compartment_id = var.tenancy_ocid
  name           = each.key
  description    = lookup(each.value, "description", each.key)
  enable_delete  = lookup(each.value, "enable_delete", false)

  #Optional
  freeform_tags = merge(lookup(each.value, "freeform_tags", {}), local.default_freeform_tags)
  defined_tags  = lookup(each.value, "defined_tags", {})
}

resource "oci_identity_compartment" "lvl2" {
  for_each = var.cmp_lvl2

  #Required
  compartment_id = try(oci_identity_compartment.lvl1[each.value["parent"]].id, data.oci_identity_compartments.parent[each.key].compartments[0].id)
  name           = each.key
  description    = lookup(each.value, "description", each.key)
  enable_delete  = lookup(each.value, "enable_delete", false)

  #Optional
  freeform_tags = merge(lookup(each.value, "freeform_tags", {}), local.default_freeform_tags)
  defined_tags  = lookup(each.value, "defined_tags", {})

  depends_on = [oci_identity_compartment.lvl1]
}

resource "oci_identity_compartment" "lvl3" {
  for_each = var.cmp_lvl3

  #Required
  compartment_id = try(oci_identity_compartment.lvl1[each.value["parent"]].id, data.oci_identity_compartments.parent[each.key].compartments[0].id)
  name           = each.key
  description    = lookup(each.value, "description", each.key)
  enable_delete  = lookup(each.value, "enable_delete", false)

  #Optional
  freeform_tags = merge(lookup(each.value, "freeform_tags", {}), local.default_freeform_tags)
  defined_tags  = lookup(each.value, "defined_tags", {})

  depends_on = [oci_identity_compartment.lvl2]
}

resource "oci_identity_compartment" "lvl4" {
  for_each = var.cmp_lvl4

  #Required
  compartment_id = try(oci_identity_compartment.lvl1[each.value["parent"]].id, data.oci_identity_compartments.parent[each.key].compartments[0].id)
  name           = each.key
  description    = lookup(each.value, "description", each.key)
  enable_delete  = lookup(each.value, "enable_delete", false)

  #Optional
  freeform_tags = merge(lookup(each.value, "freeform_tags", {}), local.default_freeform_tags)
  defined_tags  = lookup(each.value, "defined_tags", {})

  depends_on = [oci_identity_compartment.lvl3]
}

resource "oci_identity_compartment" "lvl5" {
  for_each = var.cmp_lvl4

  #Required
  compartment_id = try(oci_identity_compartment.lvl1[each.value["parent"]].id, data.oci_identity_compartments.parent[each.key].compartments[0].id)
  name           = each.key
  description    = lookup(each.value, "description", each.key)
  enable_delete  = lookup(each.value, "enable_delete", false)

  #Optional
  freeform_tags = merge(lookup(each.value, "freeform_tags", {}), local.default_freeform_tags)
  defined_tags  = lookup(each.value, "defined_tags", {})

  depends_on = [oci_identity_compartment.lvl4]
}

resource "oci_identity_compartment" "lvl6" {
  for_each = var.cmp_lvl4

  #Required
  compartment_id = try(oci_identity_compartment.lvl1[each.value["parent"]].id, data.oci_identity_compartments.parent[each.key].compartments[0].id)
  name           = each.key
  description    = lookup(each.value, "description", each.key)
  enable_delete  = lookup(each.value, "enable_delete", false)

  #Optional
  freeform_tags = merge(lookup(each.value, "freeform_tags", {}), local.default_freeform_tags)
  defined_tags  = lookup(each.value, "defined_tags", {})
}