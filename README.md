<<<<<<< HEAD
### terraform-helm-release-prometheus-operator
Description:
-
This TF module allows the prometheus-operator deployment. 

Usage:
-
```
module "release-prometheus-operator" {
  source  = "OpenQAI/release-prometheus-operator/helm"
  version = "0.0.X"

  var.helm_chart_version = "8.15.6"
  helm_chart_namespace   = "monitoring"
  skip_crds =            = false
  grafana_adminPassword  = "pa$$w0rd"

}
=======
![Terraform CI](https://github.com/OpenQAI/terraform-helm-release-prometheus-operator/workflows/Terraform%20CI/badge.svg?branch=master)
# terraform-helm-release-prometheus-operator
>>>>>>> 5f8c3620374bd662c202676c496ae952e642a03a
