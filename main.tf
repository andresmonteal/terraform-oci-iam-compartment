// Copyright (c) 2018, 2021, Oracle and/or its affiliates.

########################
# Compartment
########################

locals {
  default_freeform_tags = {
    terraformed = "Please do not edit manually"
    module      = "oracle-terraform-oci-iam-compartment"
  }
  merged_freeform_tags = merge(var.freeform_tags, local.default_freeform_tags)
}


resource "oci_identity_compartment" "this" {
  #Required
  compartment_id = var.compartment_id
  name           = var.compartment_name
  description    = var.compartment_description
  enable_delete  = var.enable_delete

  #Optional
  freeform_tags = local.merged_freeform_tags
  defined_tags = var.defined_tags
}
