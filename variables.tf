variable "region" {
  description = "The region used to launch this module resources."
  type = string
  default = ""
}

variable "profile" {
  description = "The profile name as set in the shared credentials file. If not set, it will be sourced from the ALICLOUD_PROFILE environment variable."
  type        = string
  default     = ""
}
variable "shared_credentials_file" {
  description = "This is the path to the shared credentials file. If this is not set and a profile is specified, $HOME/.aliyun/config.json will be used."
  type        = string
  default     = ""
}

variable "skip_region_validation" {
  description = "Skip static validation of region ID. Used by users of alternative AlibabaCloud-like APIs or users w/ access to regions that are not public (yet)."
  type        = bool
  default     = false
}

###############
# ecs_cluster
###############

variable "create_cluster" {
  description = "Whether to create this cluster or not?"
  type        = bool
  default     = true
}

variable "cluster_name" {
  description = "The name of the cluster that you want to create."
  type        = string
}

variable "cluster_type" {
  description = "The type of the cluster that you want to create. Valid values only: 2: ECS cluster."
  type        = number
  default     = 2
}

variable "network_mode" {
  description = "The network type of the cluster that you want to create. Valid values: 1: classic network. 2: VPC."
  type        = number
  default     = 2
}

variable "logical_region_id" {
  description = "The ID of the namespace where you want to create the cluster."
  type        = string
  default     = ""
}

variable "vpc_id" {
  description = "The ID of the Virtual Private Cloud (VPC) for the cluster that you want to create. This parameter needs to be specified if the ClusterType is set as VPC."
  type        = string
}

variable "ecs_import" {
  description = "Whether to import ecs to cluster"
  type        = bool
  default     = false
}

variable "instance_ids" {
  description = "The ID of ECS instance. e.g. instanceId1, instanceId2. Omited when not to import ecs. ([\"aaaaa\", \"bbbb\"])"
  type        = list(string)
  default     = []
}


################
# ecs_app
################

variable "create_app" {
  description = "Whether to create this application or not?"
  type        = bool
  default     = true
}

variable "application_name" {
  description = "Name of your EDAS application. Only letters '-' '_' and numbers are allowed. The length cannot exceed 36 characters"
  type        = string
}

variable "cluster_id" {
  default     = ""
  description = "The ID of the cluster that you want to create the application. The default cluster will be used if you do not specify this parameter."
  type        = string
}

variable "package_type" {
  description = "The type of the package for the deployment of the application that you want to create. The valid values are: WAR and JAR. We strongly recommend you to set this parameter when creating the application."
  type        = string
}

variable "build_pack_id" {
  description = "The package ID of Enterprise Distributed Application Service (EDAS) Container, which can be retrieved by calling container version list interface ListBuildPack or the \"Pack ID\" column in container version list. When creating High-speed Service Framework (HSF) application, this parameter is required. Set 0 when non-HSF application"
  type        = number
  default     = 0
}

variable "description" {
  description = "The description of the application that you want to create."
  type        = string
  default     = ""
}

variable "health_check_url" {
  description = "The URL for health checking of the application."
  type        = string
  default     = ""
}


variable "ecu_info" {
  description = "The IDs of the Elastic Compute Unit (ECU) where you want to deploy the application.([\"aaaaa\", \"bbbb\"])"
  type        = list(string)
  default     = []
}

variable "group_id" {
  description = "The ID of the instance group where the application is going to be deployed. Set this parameter to all if you want to deploy the application to all groups. Omited when create an empty EDAS application."
  type        = string
  default     = ""
}

variable "package_version" {
  description = "The version of the application that you want to deploy. It must be unique for every application. The length cannot exceed 64 characters. We recommended you to use a timestamp. Omited when create an empty EDAS application or use timestamp."
  type        = string
  default     = ""
}

variable "war_url" {
  description = "The address to store the uploaded web application (WAR) package for application deployment. Omited when create an empty EDAS application. This parameter is required when the deployType parameter is set as url. We recommend you to set this parameter to the address of an Object Storage Service (OSS) system."
  type        = string
  default     = ""
}

variable "bind_slb" {
  description = "Whether to bind a slb to the application."
  type        = bool
  default     = false
}

variable "slb_id" {
  description = "The ID of the SLB instance that is going to be bound. Omited when not to bind a slb."
  type        = string
  default     = ""
}

variable "slb_ip" {
  description = "The IP address that is allocated to the bound SLB instance. Omited when not to bind a slb."
  type        = string
  default     = ""
}

variable "slb_type" {
  description = "The type of the bound SLB instance: internet, intranet. Omited when not to bind a slb."
  type        = string
  default     = ""
}

variable "slb_listener_port" {
  description = "The listening port for the bound SLB instance. Set 0 when not to bind a slb."
  type        = number
  default     = 80
}

variable "slb_vserver_group_id" {
  description = "The ID of the virtual server (VServer) group associated with the intranet SLB instance. Omited when not to bind a slb."
  type        = string
  default     = ""
}

