output "this_app_id" {
  description = "The ID of ecs app"
  value       = join(",", alicloud_edas_application.this.*.id)
}
