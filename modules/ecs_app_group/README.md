Complete edas ecs application deploy group
=============================

Configuration in this directory create ecs application deloy group on Alibaba Cloud. 


## Usage

To run this example you need to execute:

```bash
$ terraform init
$ terraform plan
$ terraform apply
```
Run `terraform destroy` when you don't need these resources.


## Input

| Name  |  Description | Type | Default | Required|
| :-----|:----------|:-----|:--------|:--------|
|create|Whether to create this deploy group or not|boolean|true|no|
|app_id|The ID of the application that you want to create deploy group.|string|null|yes|
|group_name|The name of the instance group that you want to create. The length cannot exceed 64 characters.|string|null|no|
|scale_app|Whether to scale this application or not|boolean|false|no|
|ecu_info|The ID of the Elastic Compute Unit (ECU) where you want to deploy the application. Omited when not to scale this application.|list(string)|[]|no|
|force_status|This parameter specifies whether to forcibly remove an ECS instance where the application is deployed. It is set as true only after the ECS instance expires. In normal cases, this parameter do not need to be specified.|boolean|false|no|
|deploy_app|Whether to deploy this application or not|boolean|false|no|
|package_version|The version of the application that you want to deploy. It must be unique for every application. The length cannot exceed 64 characters. We recommended you to use a timestamp. Omited when not to deploy the application or use timestamp.|string|null|yes|
|war_url|The address to store the uploaded web application (WAR) package for application deployment. This parameter is required when the deployType parameter is set as url. We recommend you to set this parameter to the address of an Object Storage Service (OSS) system. Omited when not to deploy the application or use timestamp.|string|null|no|


## Output

| Name  |  Description |
| :-----|:----------|
|this_group_id|The ID of ecs app group|
|ecc_info|The ID of the Elastic Compute Container (ECC) is corresponding to the ECS instance that you want to remove for the application.|
|last_package_version|Version of the last deployment package.|