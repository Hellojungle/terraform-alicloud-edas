variable "region" {
  description = "The region used to launch this module resources."
  type = string
  default = ""
}

variable "profile" {
  description = "The profile name as set in the shared credentials file. If not set, it will be sourced from the ALICLOUD_PROFILE environment variable."
  type        = string
  default     = ""
}
variable "shared_credentials_file" {
  description = "This is the path to the shared credentials file. If this is not set and a profile is specified, $HOME/.aliyun/config.json will be used."
  type        = string
  default     = ""
}

variable "skip_region_validation" {
  description = "Skip static validation of region ID. Used by users of alternative AlibabaCloud-like APIs or users w/ access to regions that are not public (yet)."
  type        = bool
  default     = false
}

output "this_group_id" {
  description = "The ID of ecs app group"
  value       = split(":", join(",", alicloud_edas_deploy_group.this.*.id))[2]
}

output "ecc_info" {
  description = "The ID of the Elastic Compute Container (ECC) is corresponding to the ECS instance that you want to remove for the application."
  value = join(",", alicloud_edas_application_scale.this.*.ecc_info)
}

output "last_package_version" {
  description = "Version of the last deployment package."
  value = join(",", alicloud_edas_application_deployment.this.*.last_package_version)
}