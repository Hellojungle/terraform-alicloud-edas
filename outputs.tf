output "this_cluster_id" {
  description = "The ID of ecs cluster"
  value       = module.ecs_cluster.this_cluster_id
}

output "status_map" {
  value       = module.ecs_cluster.status_map
  description = "ECS instance's import status. Valid values: 1 means running; 0 means being converted; -1 means failed to be converted; -2 means Offline. "
}

output "ecu_map" {
  value       = module.ecs_cluster.ecu_map
  description = "The ecu map generated after ECS is imported into the cluster. Key: EcsId. Value: EcuId."
}

output "cluster_member_ids" {
  value       = module.ecs_cluster.cluster_member_ids
  description = "The list of cluster_member_id. Key: ECSid. Value: cluster_member_id."
}

output "this_app_id" {
  description = "The ID of ecs app"
  value       = module.ecs_app.this_app_id
}
