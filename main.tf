provider "aws" {
  region = var.region
}

# For creating custom or inline policies 
resource "aws_iam_policy" "jaya-world-policy" {
  name = var.policy_name
  description = var.policy_description
  path = "/"
  policy = var.iam_policy
  tags = merge(var.tags)
}

# For refering AWS managed policies
resource "aws_iam_policy_attachment" "jaya-world-aws-policy" {
  count = var.is_aws_policy_required ? 1 : 0
  name = var.policy_name
  users = var.apply_to_users
  roles = var.apply_to_roles
  groups = var.apply_to_groups
  policy_arn = var.aws_policy_arn
}

