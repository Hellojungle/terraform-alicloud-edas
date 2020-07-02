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

variable "create" {
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
  description = "The ID of the namespace where you want to create the application."
  type        = string
  default     = ""
}

variable "vpc_id" {
  description = "The ID of the Virtual Private Cloud (VPC) for the cluster that you want to create. This parameter needs to be specified if the ClusterType is set as VPC."
  type        = string
}

variable "ecs_import" {
  description = "Whether to import ecs?"
  type        = bool
  default     = false
}

variable "instance_ids" {
  description = "The ID of instance. e.g. instanceId1, instanceId2. Omited when not to import ecs. ([\"aaaaa\", \"bbbb\"])"
  type        = list(string)
  default     = []
}