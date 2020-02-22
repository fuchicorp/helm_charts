module "helm_deploy" {
  //source                 = "git::https://github.com/fuchicorp/helm-deploy.git" #
  source  = "fuchicorp/chart/helm"

  deployment_name        = "${var.deployment_name}" #"csamatov96-hello-world"  
  
  deployment_environment = "${var.deployment_environment}" #forget .var suka

  deployment_endpoint    = "csamatov96-hello-world.fuchicorp.com" #DNS
  deployment_path        = "csamatov96-hello-world" #path for helm chart on local 
  #
  template_custom_vars = {
    deployment_image = "nginx"
    db_host_name = "csamatov96-db.fuchicorp.com"
    db_user_name = "fuchicorp-csamatov96-user"
  }
}
