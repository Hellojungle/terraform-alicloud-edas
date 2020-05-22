##################
# EDAS
##################

provider "alicloud" {
  profile                 = var.profile != "" ? var.profile : null
  shared_credentials_file = var.shared_credentials_file != "" ? var.shared_credentials_file : null
  region                  = var.region != "" ? var.region : null
  skip_region_validation  = var.skip_region_validation
  configuration_source  = "terrform-alicloud-modules/edas"
}

###################################################
# create ecs cluster and attach ecs to this cluster
###################################################

module "ecs_cluster" {
  source              = "./modules/ecs_cluster"
  cluster_name        = var.cluster_name
  logical_region_id   = var.logical_region_id
  vpc_id              = var.vpc_id
  create              = var.create_cluster
  cluster_type        = var.cluster_type
  network_mode        = var.network_mode
  ecs_import          = var.ecs_import
  instance_ids        = var.instance_ids
}

#############################
# create ecs app and deploy
#############################
module "ecs_app" {
  source              = "./modules/ecs_app"
  create              = var.create_app
  application_name    = var.application_name
  cluster_id          = var.cluster_id != "" ? var.cluster_id : module.ecs_cluster.this_cluster_id
  package_type        = var.package_type
  build_pack_id       = var.build_pack_id
  description         = var.description
  health_check_url    = var.health_check_url
  logical_region_id   = var.logical_region_id
  ecu_info            = length(var.ecu_info) > 0 ? var.ecu_info : values(module.ecs_cluster.ecu_map)
  group_id            = var.group_id
  package_version     = var.package_version
  war_url             = var.war_url
  slb_bind            = var.slb_bind
  slb_id              = var.slb_id
  slb_ip              = var.slb_ip
  type                = var.type
  listener_port       = var.listener_port
  vserver_group_id    = var.vserver_group_id
}

