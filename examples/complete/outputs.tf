output "cluster_id" {
  description = "The ID of ecs cluster"
  value       = module.edas.this_cluster_id
}

output "status_map" {
  description = "ECS instance's import status. Valid values: 1 means running; 0 means being converted; -1 means failed to be converted; -2 means Offline. "
  value       = module.edas.status_map
}

output "ecu_map" {
  description = "The ecu map generated after ECS is imported into the cluster. Key: EcsId. Value: EcuId."
  value       = module.edas.ecu_map
}

output "cluster_member_ids" {
  description = "The list of cluster_member_id. Key: ECSid. Value: cluster_member_id."
  value       = module.edas.cluster_member_ids
}

output "app_id" {
  description = "The ID of ecs app"
  value       = module.edas.this_app_id
}