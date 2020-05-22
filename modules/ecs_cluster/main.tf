resource "alicloud_edas_cluster" "this" {
  count = var.create ? 1 : 0
  cluster_name = var.cluster_name
  cluster_type = var.cluster_type
  network_mode = var.network_mode
  logical_region_id = var.logical_region_id
  vpc_id = var.vpc_id
}

resource "alicloud_edas_instance_cluster_attachment" "this" {
  count = var.ecs_import ? 1 : 0
  cluster_id = alicloud_edas_cluster.this[count.index].id
  instance_ids = var.instance_ids
}