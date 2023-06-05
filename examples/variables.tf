variable "tenancy_ocid" {
  type = string
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