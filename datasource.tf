data "oci_identity_compartments" "parent" {
  for_each = merge(var.cmp_lvl2, var.cmp_lvl3, var.cmp_lvl4, var.cmp_lvl5, var.cmp_lvl6)

  #Required
  compartment_id            = var.tenancy_ocid
  access_level              = "ANY"
  compartment_id_in_subtree = true

  #Optional
  filter {
    name   = "state"
    values = ["ACTIVE"]
  }

  filter {
    name   = "name"
    values = [each.value["parent"]]
  }
}