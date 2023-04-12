resource "prismacloud_policy" "example" {
  name        = "${var.randomName}"
  policy_type = "config"
  cloud_type  = "azure"
  severity    = "high"
  labels      = ["TERRAFORM-TEST"]
  description = "CREATED WITH TERRAFORM"
  enabled     = true
  rule {
    name      = "${var.randomName}"
    rule_type = "Config"
    parameters = {
      savedSearch = true
    }
    criteria = prismacloud_saved_search.example.search_id
  }
  compliance_metadata {
      compliance_id = prismacloud_compliance_standard_requirement_section.example.csrs_id
    }
}

resource "prismacloud_saved_search" "example" {
  name        = "${var.randomName}"
  description = "TERRAFORM saved RQL search"
  search_id   = prismacloud_rql_search.example.search_id
  query       = prismacloud_rql_search.example.query
  time_range {
     relative {
      unit   = prismacloud_rql_search.example.time_range.0.relative.0.unit
      amount = prismacloud_rql_search.example.time_range.0.relative.0.amount
    }
  }
}

resource "prismacloud_rql_search" "example" {
  search_type = "config"
  query       = "config from cloud.resource where api.name = 'azure-kubernetes-cluster' AND json.rule = properties.enableRBAC is true"
  time_range {
     relative {
      unit   = "hour"
      amount = 24
    }
  }
  
}



resource "prismacloud_policy" "example2" {
  name        = "${var.randomName}-2"
  policy_type = "config"
  cloud_type  = "azure"
  severity    = "high"
  labels      = ["TERRAFORM-TEST2"]
  description = "CREATED WITH TERRAFORM"
  enabled     = true
  rule {
    name      = "${var.randomName}-2"
    rule_type = "Config"
    parameters = {
      savedSearch = true
    }
    criteria = prismacloud_saved_search.example2.search_id
  }
  compliance_metadata {
      compliance_id = prismacloud_compliance_standard_requirement_section.example.csrs_id
    }
}

resource "prismacloud_saved_search" "example2" {
  name        = "${var.randomName}-2"
  description = "TERRAFORM saved RQL search"
  search_id   = prismacloud_rql_search.example2.search_id
  query       = prismacloud_rql_search.example2.query
  time_range {
     relative {
      unit   = prismacloud_rql_search.example2.time_range.0.relative.0.unit
      amount = prismacloud_rql_search.example2.time_range.0.relative.0.amount
    }
  }
}

resource "prismacloud_rql_search" "example2" {
  search_type = "config"
  query       = "config from cloud.resource where api.name = 'azure-kubernetes-cluster' AND json.rule = properties.enableRBAC is true"
  time_range {
     relative {
      unit   = "hour"
      amount = 24
    }
  }
  
}
