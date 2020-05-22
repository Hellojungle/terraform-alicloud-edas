terraform-alicloud-edas
=============================

English | [简体中文](https://github.com/terraform-alicloud-modules/terraform-alicloud-edas/blob/master/README-CN.md)


Terraform module which create both edas ecs cluster and ecs application on Alibaba Cloud. 

These types of resources are supported:

* [edas_cluster](https://github.com/terraform-providers/terraform-provider-alicloud/blob/master/website/docs/r/edas_cluster.html.markdown)

* [edas_application](https://github.com/terraform-providers/terraform-provider-alicloud/blob/master/website/docs/r/edas_application.html.markdown)

Kubernetes related will arrive soon.

## Terraform versions

The Module requires Terraform 0.12 and Terraform Provider AliCloud 1.82.0+.

## Usage

Create both edas ecs cluster and ecs application

   ```
   module "edas" {
     source             = "terraform-alicloud-modules/edas/alicloud
     region             = "cn-hangzhou"
     profile            = "your-profile-name"
     cluster_name       = "edas-xxx"
     logical_region_id  = "cn-shenzhen:xxx"
     vpc_id             = "vpc-xxx"
     ecs_import         = true
     instance_ids       = ["aaa", "bbb"]
     application_name   = "edas-app-xxx"
     package_type       = "JAR"
     group_id           = "all"
     war_url            = "http://xxxx/demo.jar"
     ...
   }
   
   ```
## Example
* [complete](https://github.com/terraform-alicloud-modules/terraform-alicloud-edas/tree/master/examples/complete)
    
## Notes
* This module using AccessKey and SecretKey are from `profile` and `shared_credentials_file`.
If you have not set them yet, please install [aliyun-cli](https://github.com/aliyun/aliyun-cli#installation) and configure it.

Submit Issues
-------------
If you have any problems when using this module, please opening a [provider issue](https://github.com/terraform-providers/terraform-provider-alicloud/issues/new) and let us know.

**Note:** There does not recommend to open an issue on this repo.

Authors
-------
Created and maintained by Jungle(353187194@qq.com), He Guimin(@xiaozhu36, heguimin36@163.com).

License
----
Apache 2 Licensed. See LICENSE for full details.

Reference
---------
* [Terraform-Provider-Alicloud Github](https://github.com/terraform-providers/terraform-provider-alicloud)
* [Terraform-Provider-Alicloud Release](https://releases.hashicorp.com/terraform-provider-alicloud/)
* [Terraform-Provider-Alicloud Docs](https://www.terraform.io/docs/providers/alicloud/index.html)