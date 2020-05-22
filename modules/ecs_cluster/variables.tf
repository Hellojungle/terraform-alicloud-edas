variable "create" {
  description = "Whether to create this resource or not?"
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