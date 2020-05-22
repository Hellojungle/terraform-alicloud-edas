variable "create" {
  description = "Whether to create this resource or not?"
  type        = bool
  default     = true
}

variable "app_id" {
  description = "The ID of the application that you want to create deploy group."
  type        = string
}

variable "group_name" {
  description = "The name of the instance group that you want to create. The length cannot exceed 64 characters."
  type        = string
}

#########################
# scale application group
#########################

variable "scale_app" {
  description = "Whether to scale this application or not?"
  type        = bool
  default     = false
}

variable "ecu_info" {
  description = "The ID of the Elastic Compute Unit (ECU) where you want to deploy the application. Omited when not to scale this application."
  type        = list(string)
  default     = []
}

variable "force_status" {
  description = "This parameter specifies whether to forcibly remove an ECS instance where the application is deployed. It is set as true only after the ECS instance expires. In normal cases, this parameter do not need to be specified."
  type        = bool
  default     = false
}


#########################
# deploy application group
#########################

variable "deploy_app" {
  description = "Whether to deploy this application or not?"
  type        = bool
  default     = false
}

variable "package_version" {
  description = "The version of the application that you want to deploy. It must be unique for every application. The length cannot exceed 64 characters. We recommended you to use a timestamp. Omited when not to deploy the application or use timestamp."
  type        = string
  default     = ""
}

variable "war_url" {
  description = "The address to store the uploaded web application (WAR) package for application deployment. This parameter is required when the deployType parameter is set as url. We recommend you to set this parameter to the address of an Object Storage Service (OSS) system. Omited when not to deploy the application or use timestamp."
  type        = string
  default     = ""
}
