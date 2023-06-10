tenancy_ocid = "tenant-id"

cmp_lvl1 = {
  "cmp-networking" = {
    description = "compartment used to store networking resources"
  },
  "cmp-security" = {
    description = "compartment used to store security resources"
  },
  "cmp-monitoring" = {
    description = "compartment used to store monitoring resources"
  },
  "cmp-app" = {
    description = "compartment used to store sicop app resources"
  },
  "cmp-sandbox" = {
    description = "compartment used to store sandbox resources"
  }
}

cmp_lvl2 = {
  "cmp-app-np" = {
    parent      = "cmp-app"
    description = "compartment used to store sicop non prd app resources"
  },
  "cmp-app-pr" = {
    parent      = "cmp-app"
    description = "compartment used to store sicop prd app resources"
  }
}