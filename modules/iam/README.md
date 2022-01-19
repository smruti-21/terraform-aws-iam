## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |
| <a name="provider_template"></a> [template](#provider\_template) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_iam_instance_profile.default](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_instance_profile) | resource |
| [aws_iam_policy.default](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_policy) | resource |
| [aws_iam_role.default](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role_policy_attachment.default](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_iam_role_policy_attachment.managed](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_caller_identity.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/caller_identity) | data source |
| [template_file.policy](https://registry.terraform.io/providers/hashicorp/template/latest/docs/data-sources/file) | data source |
| [template_file.policy_assume_role](https://registry.terraform.io/providers/hashicorp/template/latest/docs/data-sources/file) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_assume_role"></a> [assume\_role](#input\_assume\_role) | The service allowed to use the policy. | `string` | n/a | yes |
| <a name="input_attach_managed_policy"></a> [attach\_managed\_policy](#input\_attach\_managed\_policy) | Create the instance profile. Typically applies to those policies related to ec2 instances | `bool` | `false` | no |
| <a name="input_attach_policy_file"></a> [attach\_policy\_file](#input\_attach\_policy\_file) | Create the instance profile. Typically applies to those policies related to ec2 instances | `bool` | `false` | no |
| <a name="input_create_instance_profile"></a> [create\_instance\_profile](#input\_create\_instance\_profile) | Create the instance profile. Typically applies to those policies related to ec2 instances | `bool` | n/a | yes |
| <a name="input_description"></a> [description](#input\_description) | The description of the role and the policy. | `string` | `"Managed by Terraform"` | no |
| <a name="input_force_detach_policies"></a> [force\_detach\_policies](#input\_force\_detach\_policies) | Specifies to force detaching any policies the role has before destroying it. | `string` | `false` | no |
| <a name="input_managed_policy"></a> [managed\_policy](#input\_managed\_policy) | The managed policy attached to the role. | `list(string)` | <pre>[<br>  "optional"<br>]</pre> | no |
| <a name="input_max_session_duration"></a> [max\_session\_duration](#input\_max\_session\_duration) | The maximum session duration (in seconds) that you want to set for the specified role. | `string` | `"3600"` | no |
| <a name="input_name"></a> [name](#input\_name) | The name of the role. If omitted, Terraform will assign a random, unique name. | `string` | n/a | yes |
| <a name="input_path"></a> [path](#input\_path) | Path in which to create the role and the policy. | `string` | `"/"` | no |
| <a name="input_policy_assume_role_file"></a> [policy\_assume\_role\_file](#input\_policy\_assume\_role\_file) | File containing the policy for this role. | `string` | n/a | yes |
| <a name="input_policy_file"></a> [policy\_file](#input\_policy\_file) | File containing the policy for this role. | `string` | `""` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_account_id"></a> [account\_id](#output\_account\_id) | n/a |
| <a name="output_caller_arn"></a> [caller\_arn](#output\_caller\_arn) | n/a |
| <a name="output_caller_user"></a> [caller\_user](#output\_caller\_user) | n/a |
| <a name="output_iam_policy_arn"></a> [iam\_policy\_arn](#output\_iam\_policy\_arn) | The ARN assigned by AWS to this policy. |
| <a name="output_iam_policy_description"></a> [iam\_policy\_description](#output\_iam\_policy\_description) | The description of the policy. |
| <a name="output_iam_policy_document"></a> [iam\_policy\_document](#output\_iam\_policy\_document) | The policy document. |
| <a name="output_iam_policy_id"></a> [iam\_policy\_id](#output\_iam\_policy\_id) | The policy's ID. |
| <a name="output_iam_policy_name"></a> [iam\_policy\_name](#output\_iam\_policy\_name) | The name of the policy. |
| <a name="output_iam_policy_path"></a> [iam\_policy\_path](#output\_iam\_policy\_path) | The path of the policy in IAM. |
| <a name="output_iam_role_arn"></a> [iam\_role\_arn](#output\_iam\_role\_arn) | The Amazon Resource Name (ARN) specifying the role. |
| <a name="output_iam_role_create_date"></a> [iam\_role\_create\_date](#output\_iam\_role\_create\_date) | The creation date of the IAM role. |
| <a name="output_iam_role_description"></a> [iam\_role\_description](#output\_iam\_role\_description) | The description of the role. |
| <a name="output_iam_role_name"></a> [iam\_role\_name](#output\_iam\_role\_name) | The name of the role. |
| <a name="output_iam_role_unique_id"></a> [iam\_role\_unique\_id](#output\_iam\_role\_unique\_id) | The stable and unique string identifying the role. |
| <a name="output_instance_profile"></a> [instance\_profile](#output\_instance\_profile) | Instance profile. |
