variable "region" {
  type = string
  default = "us-east-1"
}

variable "policy_name" {
  description = "The name of the policy. If omitted, Terraform will assign a random, unique name."
  type = string
  default = ""
}

variable "iam_policy" {
  description = "The policy document. This is a JSON formatted string. For more information about building AWS IAM policy documents with Terraform"
  type = string
}

variable "tags" {
  description = "Map of resource tags for the IAM Policy. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level"
  type = map(string)
  default = {}
}

variable "policy_description" {
  description = "Description of the IAM policy."
  type = string
  default = ""
}

variable "apply_to_users" {
  description = "The user(s) the policy should be applied to"
  type = string
  default = ""
}

variable "apply_to_roles" {
  description = "The role(s) the policy should be applied to"
  type = string
  default = ""
}

variable "apply_to_groups" {
  description = "The group(s) the policy should be applied to"
  type = string
  default = ""
}

variable "aws_policy_arn" {
  description = "The ARN of the policy you want to apply"
  type = string
  default = ""
}
