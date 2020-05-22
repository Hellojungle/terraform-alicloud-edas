output "this_cluster_id" {
  description = "The ID of ecs cluster"
  value       = join(",", alicloud_edas_cluster.this.*.id)
}

output "status_map" {
  value       = var.ecs_import ? element(alicloud_edas_instance_cluster_attachment.this.*.status_map, 1) : {}
  description = "ECS instance's import status. Valid values: 1 means running; 0 means being converted; -1 means failed to be converted; -2 means Offline. "
}

output "ecu_map" {
  value       = var.ecs_import ? element(alicloud_edas_instance_cluster_attachment.this.*.ecu_map, 1) : {}
  description = "The ecu map generated after ECS is imported into the cluster. Key: EcsId. Value: EcuId."
}

output "cluster_member_ids" {
  value       = var.ecs_import ? element(alicloud_edas_instance_cluster_attachment.this.*.cluster_member_ids, 1) : {}
  description = "The list of cluster_member_id. Key: ECSid. Value: cluster_member_id."
}