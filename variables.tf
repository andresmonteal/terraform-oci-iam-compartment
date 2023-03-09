// Copyright (c) 2018, 2021, Oracle and/or its affiliates.

variable "compartment_id" {
  type = string
  description = "The OCID of the parent compartment containing the compartment. Allow for sub-compartments creation"
}

variable "compartment_name" {
  type = string
  description = "The name you assign to the compartment during creation. The name must be unique across all compartments in the tenancy. "
}

variable "compartment_description" {
  type = string
  description = "The description you assign to the compartment. Does not have to be unique, and it's changeable. "
  default     = null
}

variable "enable_delete" {
  type = bool
  description = "Enable compartment delete on destroy. If true, compartment will be deleted when `terraform destroy` is executed; If false, compartment will not be deleted on `terraform destroy` execution"
  default     = false
}

variable "freeform_tags" {
  type        = map(any)
  default     = {}
  description = "Free-form tags for this resource."
}

variable "defined_tags" {
  type        = map(any)
  default     = {}
  description = "Defined tags for this resource."
}