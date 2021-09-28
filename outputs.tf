output "id" {
  description = "The ARN assigned by AWS to this policy"
  value = aws_iam_policy.jaya-world-policy.id
}

output "arn" {
  description = "The ARN assigned by AWS to this policy"
  value = aws_iam_policy.jaya-world-policy.arn 
}

output "name" {
  description = "The description of the policy"
  value = aws_iam_policy.jaya-world-policy.name 
}

output "policy_id" {
  description = "The policy's ID."
  value = aws_iam_policy.jaya-world-policy.policy_id 
}