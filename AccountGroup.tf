resource "prismacloud_account_group" "example" {
    name = var.randomName
    description = "Created with Terraform"
    account_ids = var.accountIds
}