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
