resource "alicloud_edas_application" "this" {
  count             = var.create ? 1 : 0
  application_name  = var.application_name
  package_type      = var.package_type
  cluster_id        = var.cluster_id
  build_pack_id     = var.build_pack_id
  descriotion       = var.description
  health_check_url  = var.health_check_url
  logical_region_id = var.logical_region_id
  ecu_info          = var.ecu_info
  group_id          = var.group_id
  package_version   = var.package_version
  war_url           = var.war_url
}


resource "alicloud_edas_slb_attachment" "this" {
  count             = var.slb_bind ? 1 : 0
  app_id            = alicloud_edas_application.this[count.index].id
  slb_id            = var.slb_id
  slb_ip            = var.slb_ip
  type              = var.type
  listener_port     = var.listener_port
  vserver_group_id  = var.vserver_group_id
}