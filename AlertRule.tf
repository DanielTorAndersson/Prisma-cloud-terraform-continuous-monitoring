resource "prismacloud_alert_rule" "example" {
    name = "Terraform-Alert-Rule"
    description = "Made by Terraform"
    policies = tolist([prismacloud_policy.example.policy_id, prismacloud_policy.example2.policy_id])
    target {
        account_groups = [prismacloud_account_group.example.group_id]
    }
    
        notification_config {
        enabled = false
        include_remediation = false
        config_type = "email" 
        frequency = "as_it_happens"
        recipients = var.emailRecipients
        }

}