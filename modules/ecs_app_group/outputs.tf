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