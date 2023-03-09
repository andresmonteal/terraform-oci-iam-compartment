// Copyright (c) 2018, 2021, Oracle and/or its affiliates.

output "compartment_id" {
  description = "Compartment ocid"
  value = oci_identity_compartment.this.id
}

output "parent_compartment_id" {
  description = "Parent Compartment ocid"
  value = oci_identity_compartment.this.compartment_id
}

output "compartment_name" {
  description = "Compartment name"
  value = oci_identity_compartment.this.name
}

output "compartment_description" {
  description = "Compartment description"
  value = oci_identity_compartment.this.description
}
