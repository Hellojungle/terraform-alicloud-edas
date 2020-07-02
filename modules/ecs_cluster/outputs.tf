output "this_cluster_id" {
  description = "The ID of ecs cluster"
  value       = join(",", alicloud_edas_cluster.this.*.id)
}

output "status_map" {
  description = "ECS instance's import status. Valid values: 1 means running; 0 means being converted; -1 means failed to be converted; -2 means Offline. "
  value       = var.ecs_import ? concat(alicloud_edas_instance_cluster_attachment.this.*.status_map, [""])[0] : {}
}

output "ecu_map" {
  description = "The ecu map generated after ECS is imported into the cluster. Key: EcsId. Value: EcuId."
  value       = var.ecs_import ? concat(alicloud_edas_instance_cluster_attachment.this.*.ecu_map, [""])[0] : {}
}

output "cluster_member_ids" {
  description = "The list of cluster_member_id. Key: ECSid. Value: cluster_member_id."
  value       = var.ecs_import ? concat(alicloud_edas_instance_cluster_attachment.this.*.cluster_member_ids, [""])[0] : {}
}