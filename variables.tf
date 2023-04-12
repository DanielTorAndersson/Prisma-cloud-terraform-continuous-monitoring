variable "randomName" {
  type    = string
  default = "DTOR-TERRAFORM"
}

variable "accountIds" {
  type    = list(string)
  default = []
}

variable "emailRecipients" {
  type    = list(string)
  default = []
}

variable "complianceStandardName" {
  type    = string
  default = "Terraform Standard"
}


