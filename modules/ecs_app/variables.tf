variable "create" {
  description = "Whether to create this resource or not?"
  type        = bool
  default     = true
}

variable "application_name" {
  description = "Name of your EDAS application. Only letters, '-', '_' and numbers are allowed. The length cannot exceed 36 characters."
  type        = string
}

variable "cluster_id" {
  description = "The ID of the cluster that you want to create the application. The default cluster will be used if you do not specify this parameter."
  type        = string
}

variable "package_type" {
  description = "The type of the package for the deployment of the application that you want to create. The valid values are: WAR and JAR. We strongly recommend you to set this parameter when creating the application."
  type        = string
}

variable "build_pack_id" {
  description = "The package ID of Enterprise Distributed Application Service (EDAS) Container, which can be retrieved by calling container version list interface ListBuildPack or the \"Pack ID\" column in container version list. When creating High-speed Service Framework (HSF) application, this parameter is required. Set 0 when non-HSF application."
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

variable "logical_region_id" {
  description = "The ID of the namespace where you want to create the application.(cn-shenzhen:aaa)."
  type        = string
  default     = ""
}

variable "ecu_info" {
  description = "The IDs of the Elastic Compute Unit (ECU) where you want to deploy the application.([\"aaaaa\", \"bbbb\"])."
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

variable "slb_bind" {
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

variable "type" {
  description = "The type of the bound SLB instance: internet, intranet. Omited when not to bind a slb."
  type        = string
  default     = ""
}

variable "listener_port" {
  description = "The listening port for the bound SLB instance. Set 0 when not to bind a slb."
  type        = number
  default     = 80
}

variable "vserver_group_id" {
  description = "The ID of the virtual server (VServer) group associated with the intranet SLB instance. Omited when not to bind a slb."
  type        = string
  default     = ""
}