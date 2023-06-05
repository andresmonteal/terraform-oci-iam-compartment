tenancy_ocid = "tenant id"

cmp_lvl1 = {
  "cpm-networking" = {
    description = "compartment used to store networking resources"
  },
  "cmp-security" = {
    description = "compartment used to store security resources"
  },
  "cmp-monitoring" = {
    description = "compartment used to store monitoring resources"
  },
  "cmp-app" = {
    description = "compartment used to store app resources"
  }
}

cmp_lvl2 = {
  "cmp-app-dev" = {
    parent      = "cmp-sicop"
    description = "compartment used to store app dev resources"
  },
  "cmp-app-qa" = {
    parent      = "cmp-sicop"
    description = "compartment used to store app qa resources"
  },
  "cmp-app-prd" = {
    parent      = "cmp-sicop"
    description = "compartment used to store app prd resources"
  }
}