Complete edas ecs cluster
=============================

Configuration in this directory create ecs cluster on Alibaba Cloud. 

## Terraform versions

The Module requires Terraform 0.12 and Terraform Provider AliCloud 1.82.0+.

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
|create|Whether to create this resource or not|boolean|true|no|
|cluster_name|The name of the cluster that you want to create.|string|null|yes|
|cluster_type|The type of the cluster that you want to create. Valid values only: 2: ECS cluster.|int|2|no|
|network_mode|The network type of the cluster that you want to create. Valid values: 1: classic network. 2: VPC.|int|2|no|
|logical_region_id|The ID of the namespace where you want to create the cluster.|string|null|no|
|vpc_id|The ID of the Virtual Private Cloud (VPC) for the cluster that you want to create. This parameter needs to be specified if the ClusterType is set as VPC.|string|null|no|
|ecs_import|Whether to import ecs to cluster|boolean|false|no|
|instance_ids|The ID of instance. e.g. instanceId1, instanceId2. Omited when not to import ecs. ([\"aaaaa\", \"bbbb\"])|list(string)|[]|no|


## Output

| Name  |  Description |
| :-----|:----------|
|this_cluster_id|The ID of ecs cluster|
|status_map|ECS instance's import status. Valid values: 1 means running; 0 means being converted; -1 means failed to be converted; -2 means Offline.|
|ecu_map|The ecu map generated after ECS is imported into the cluster. Key: EcsId. Value: EcuId.|
|cluster_member_ids|The list of cluster_member_id. Key: ECSid. Value: cluster_member_id.|
