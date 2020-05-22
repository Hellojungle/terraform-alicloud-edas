module "edas" {
  source = "../.."

  application_name = "test-example"
  cluster_name = "test-example"
  package_type = "JAR"
  vpc_id = "vpc-xxx"

  ecs_import=true
  instance_ids=["i-xxxx","i-yyy"]
  group_id="all"
  war_url="http://xxx/demo.jar"
}

