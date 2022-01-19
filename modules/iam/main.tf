# https://www.terraform.io/docs/providers/aws/r/iam_role.html
resource "aws_iam_role" "default" {
  name               = var.name
  assume_role_policy = data.template_file.policy_assume_role.rendered
  path               = var.path
  description        = var.description

  max_session_duration  = var.max_session_duration
  force_detach_policies = var.force_detach_policies
}

# https://www.terraform.io/docs/providers/aws/r/iam_policy.html
resource "aws_iam_policy" "default" {
  count       = var.attach_policy_file == true ? 1 : 0
  name        = var.name
  policy      = data.template_file.policy[count.index].rendered
  path        = var.path
  description = var.description
}

# https://www.terraform.io/docs/providers/aws/r/iam_role_policy_attachment.html
resource "aws_iam_role_policy_attachment" "default" {
  count      = var.attach_policy_file == true ? 1 : 0
  role       = aws_iam_role.default.name
  policy_arn = aws_iam_policy.default[count.index].arn
}

resource "aws_iam_role_policy_attachment" "managed" {
  count      = var.attach_managed_policy == true ? length(var.managed_policy) : 0
  role       = aws_iam_role.default.name
  policy_arn = var.managed_policy[count.index]
}

## This is a global resource. It should be enable only if an ec2 is needed.
resource "aws_iam_instance_profile" "default" {
  count = var.create_instance_profile == true ? 1 : 0
  name  = var.name
  role  = aws_iam_role.default.name
  path  = var.path
}
