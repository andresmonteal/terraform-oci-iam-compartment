cmp_lvl1 = {
  "APPS" = {
    description = "generic"
  },
  "NETWORKING" = {
    description = "generic"
  }
}

cmp_lvl2 = {
  "APP-1" = {
    parent      = "APPS"
    description = "generic"
  },
  "APP-2" = {
    parent      = "APPS"
    description = "generic"
  }
}

cmp_lvl3 = {
  "APP-1-QA" = {
    parent      = "APP-1"
    description = "generic"
  },
  "APP-1-PRD" = {
    parent      = "APP-1"
    description = "generic"
  },
  "APP-2-QA" = {
    parent      = "APP-2"
    description = "generic"
  },
  "APP-2-PRD" = {
    parent      = "APP-2"
    description = "generic"
  }
}