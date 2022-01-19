variable "name" {
  type        = string
  description = "The name of the role. If omitted, Terraform will assign a random, unique name."
}

variable "create_instance_profile" {
  type        = bool
  description = "Create the instance profile. Typically applies to those policies related to ec2 instances"
}

variable "attach_policy_file" {
  default     = false
  type        = bool
  description = "Create the instance profile. Typically applies to those policies related to ec2 instances"
}

variable "attach_managed_policy" {
  default     = false
  type        = bool
  description = "Create the instance profile. Typically applies to those policies related to ec2 instances"
}

variable "assume_role" {
  type        = string
  description = "The service allowed to use the policy."
}

variable "managed_policy" {
  default     = ["optional"]
  type        = list(string)
  description = "The managed policy attached to the role."
}

variable "policy_assume_role_file" {
  type        = string
  description = "File containing the policy for this role."
}

variable "policy_file" {
  default     = ""
  type        = string
  description = "File containing the policy for this role."
}

variable "path" {
  default     = "/"
  type        = string
  description = "Path in which to create the role and the policy."
}

variable "description" {
  default     = "Managed by Terraform"
  type        = string
  description = "The description of the role and the policy."
}

variable "max_session_duration" {
  default     = "3600"
  type        = string
  description = "The maximum session duration (in seconds) that you want to set for the specified role."
}

variable "force_detach_policies" {
  default     = false
  type        = string
  description = "Specifies to force detaching any policies the role has before destroying it."
}

