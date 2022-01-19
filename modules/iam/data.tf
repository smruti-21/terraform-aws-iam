## Provider data
data "aws_caller_identity" "current" {}

output "account_id" {
  value = data.aws_caller_identity.current.account_id
}

output "caller_arn" {
  value = data.aws_caller_identity.current.arn
}

output "caller_user" {
  value = data.aws_caller_identity.current.user_id
}

## File references

data "template_file" "policy" {
  count    = var.attach_policy_file == true ? 1 : 0
  template = file("${path.module}/${var.policy_file}")

  vars = {
    account = data.aws_caller_identity.current.account_id
    name    = var.name
  }
}

data "template_file" "policy_assume_role" {
  template = file("${path.module}/${var.policy_assume_role_file}")

  vars = {
    service = var.assume_role
    account = data.aws_caller_identity.current.account_id
  }
}