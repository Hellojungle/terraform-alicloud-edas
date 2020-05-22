Complete edas ecs example
=============================

Configuration in this directory create both edas ecs cluster and ecs application on Alibaba Cloud. 


## Usage

To run this example you need to execute:

```bash
$ terraform init
$ terraform plan
$ terraform apply
```
Run `terraform destroy` when you don't need these resources.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Input

| Name  |  Description | Type | Default | Required|
| :-----|:----------|:-----|:--------|:--------|
|create_cluster|Whether to create this resource or not|boolean|true|no|
|cluster_name|The name of the cluster that you want to create.|string|null|yes|
|cluster_type|The type of the cluster that you want to create. Valid values only: 2: ECS cluster.|int|2|no|
|network_mode|The network type of the cluster that you want to create. Valid values: 1: classic network. 2: VPC.|int|2|no|
|logical_region_id|The ID of the namespace where you want to create the cluster.|string|null|no|
|vpc_id|The ID of the Virtual Private Cloud (VPC) for the cluster that you want to create. This parameter needs to be specified if the ClusterType is set as VPC.|string|null|no|
|ecs_import|Whether to import ecs to cluster|boolean|false|no|
|instance_ids|The ID of instance. e.g. instanceId1, instanceId2. Omited when not to import ecs. ([\"aaaaa\", \"bbbb\"])|list(string)|[]|no|
|create_app|Whether to create this application or not|boolean|true|no|
|application_name|Name of your EDAS application. Only letters '-' '_' and numbers are allowed. The length cannot exceed 36 characters|string|null|yes|
|cluster_id|The ID of the cluster that you want to create the application. The default cluster will be used if you do not specify this parameter.|string|null|no|
|package_type|The type of the package for the deployment of the application that you want to create. The valid values are: WAR and JAR. We strongly recommend you to set this parameter when creating the application.|string|null|yes|
|build_pack_id|The package ID of Enterprise Distributed Application Service (EDAS) Container, which can be retrieved by calling container version list interface ListBuildPack or the \"Pack ID\" column in container version list. When creating High-speed Service Framework (HSF) application, this parameter is required. Set 0 when non-HSF application|int|0|no|
|description|The description of the application that you want to create.|string|null|no|
|health_check_url|The URL for health checking of the application.|string|null|no|
|ecu_info|The IDs of the Elastic Compute Unit (ECU) where you want to deploy the application.([\"aaaaa\", \"bbbb\"])|list(string)|[]|no|
|group_id|The ID of the instance group where the application is going to be deployed. Set this parameter to all if you want to deploy the application to all groups. Omited when only create an empty EDAS application.|string|null|no|
|package_version|The version of the application that you want to deploy. It must be unique for every application. The length cannot exceed 64 characters. We recommended you to use a timestamp. Omited when create an empty EDAS application or use timestamp.|string|timestamp|no|
|war_url|The address to store the uploaded web application (WAR) package for application deployment. Omited when create an empty EDAS application. This parameter is required when the deployType parameter is set as url. We recommend you to set this parameter to the address of an Object Storage Service (OSS) system.|string|null|no|
|slb_bind|Whether to bind a slb to the application.|boolean|false|no|
|slb_id|The ID of the SLB instance that is going to be bound. Omited when not to bind a slb.|string|null|no|
|slb_ip|The IP address that is allocated to the bound SLB instance. Omited when not to bind a slb.|string|null|no|
|type|The type of the bound SLB instance: internet, intranet. Omited when not to bind a slb.|string|null|no|
|listener_port|The listening port for the bound SLB instance. Set 0 when not to bind a slb.|int|80|no|
|vserver_group_id|The ID of the virtual server (VServer) group associated with the intranet SLB instance. Omited when not to bind a slb.|string|null|no|


## Output

| Name  |  Description |
| :-----|:----------|
|this_cluster_id|The ID of ecs cluster|
|status_map|ECS instance's import status. Valid values: 1 means running; 0 means being converted; -1 means failed to be converted; -2 means Offline.|
|ecu_map|The ecu map generated after ECS is imported into the cluster. Key: EcsId. Value: EcuId.|
|cluster_member_ids|The list of cluster_member_id. Key: ECSid. Value: cluster_member_id.|
|this_app_id|The ID of ecs app|

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->