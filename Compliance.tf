resource "prismacloud_compliance_standard_requirement_section" "example" {
    csr_id = prismacloud_compliance_standard_requirement.y.csr_id
    section_id = "Section 1"
    description = "Section description"
}

resource "prismacloud_compliance_standard_requirement" "y" {
    cs_id = prismacloud_compliance_standard.x.cs_id
    name = "My first req"
    description = "Created with Terraform"
    requirement_id = "1.007"
}

resource "prismacloud_compliance_standard" "x" {
    name = var.complianceStandardName
    description = "Created with Terraform"
}