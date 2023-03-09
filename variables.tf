// Copyright (c) 2018, 2021, Oracle and/or its affiliates.

variable "tenancy_ocid" {
  description = "(Required) (Updatable) The OCID of the root compartment."
  type        = string
}

variable "cmp_lvl1" {
  type        = map(any)
  default     = {}
}

variable "cmp_lvl2" {
  type        = map(any)
  default     = {}
}

variable "cmp_lvl3" {
  type        = map(any)
  default     = {}
}