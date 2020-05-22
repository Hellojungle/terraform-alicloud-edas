resource "alicloud_edas_deploy_group" "this" {
  count       = var.create ? 1 : 0
  app_id      = var.app_id
  group_name  = var.group_name
}

resource "alicloud_edas_application_scale" "this" {
  count         = var.scale_app ? 1 : 0
  app_id        = var.app_id
  deploy_group  = split(":", alicloud_edas_deploy_group.this[count.index].id)[2]
  ecu_info      = var.ecu_info
  force_status  = var.force_status
}


resource "null_resource" "delay" {
  provisioner "local-exec" {
    command = "sleep 5"
  }
  triggers = {
    "before" = "${join(",", alicloud_edas_application_scale.this.*.id)}"
  }
}

resource "alicloud_edas_application_deployment" "this" {
  depends_on = [
    alicloud_edas_application_scale.this,
  ]
  count           = var.deploy_app ? 1 : 0
  app_id          = var.app_id
  group_id        = split(":", alicloud_edas_deploy_group.this[count.index].id)[2]
  package_version = var.package_version
  war_url         = var.war_url
}