terraform-alicloud-edas
=============================


Terraform 模块用于在阿里云上创建edas ecs集群和edas ecs应用。

支持以下的资源类型:

* [edas_cluster](https://github.com/terraform-providers/terraform-provider-alicloud/blob/master/website/docs/r/edas_cluster.html.markdown)

* [edas_application](https://github.com/terraform-providers/terraform-provider-alicloud/blob/master/website/docs/r/edas_application.html.markdown)

Kubernetes相关的能力敬请等待.

## Terraform 版本

本 Module 要求使用 Terraform 0.12 和 阿里云 Provider 1.82.0+。

## Usage

同时创建edas ecs集群和edas ecs应用。

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
## 示例
* [完整示例](https://github.com/terraform-alicloud-modules/terraform-alicloud-edas/tree/master/examples/complete)
    
## 注意事项

* 本 Module 使用的 AccessKey 和 SecretKey 可以直接从 `profile` 和 `shared_credentials_file` 中获取。如果未设置，可通过下载安装 [aliyun-cli](https://github.com/aliyun/aliyun-cli#installation) 后进行配置。

提交问题
-------
如果在使用该 Terraform Module 的过程中有任何问题，可以直接创建一个 [Provider Issue](https://github.com/terraform-providers/terraform-provider-alicloud/issues/new)，我们将根据问题描述提供解决方案。

**注意:** 不建议在该 Module 仓库中直接提交 Issue。

作者
-------
Created and maintained by Jungle(353187194@qq.com), He Guimin(@xiaozhu36, heguimin36@163.com).

参考
----
Apache 2 Licensed. See LICENSE for full details.

许可
---------
* [Terraform-Provider-Alicloud Github](https://github.com/terraform-providers/terraform-provider-alicloud)
* [Terraform-Provider-Alicloud Release](https://releases.hashicorp.com/terraform-provider-alicloud/)
* [Terraform-Provider-Alicloud Docs](https://www.terraform.io/docs/providers/alicloud/index.html)