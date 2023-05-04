variable "tenancy_ocid" {
  description = "root compartment"
  default     = "ocid1.tenancy.oc1..aaaaaaaawttxo6zmedll5b35bsjcvdx5bmobygwx7avyofsxxawvwaps26xq"
}

variable "cmp_lvl1" {
  type    = map(any)
  default = {}
}

variable "cmp_lvl2" {
  type    = map(any)
  default = {}
}

variable "cmp_lvl3" {
  type    = map(any)
  default = {}
}

variable "cmp_lvl4" {
  type    = map(any)
  default = {}
}