![Terraform](https://github.com/OpenQAI/terraform-helm-release-prometheus-operator/workflows/Terraform%20CI/badge.svg?branch=master)
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

  var.helm_chart_version     = "8.15.11"
  var.helm_chart_namespace   = "monitoring"
  var.skip_crds              =  false
  var.grafana_adminPassword  = "pa$$w0rd"

}
```

## Inputs

| Name | Description | Default | Required |
|------|-------------|------|---------|
| `helm_chart_version` | Specify the helm chart version | 8.15.11 | no |
| `helm_chart_name` | The helm chart name | prometheus-operator | no |
| `helm_chart_namespace` | The namespace where the operator will be deployed | monitoring | no |
| `create_namespace` | Create the namespace if doesn't exist | true | no |
| `defaultRules_create` | Create default rules for monitoring the cluster | true | no |
| `defaultRules_general` | Create General default rules	| true | no |
| `defaultRules_PrometheusOperator` | Create Prometheus Operator default rules	 | true | no |
| `defaultRules_alertmanager` | Create default rules for Alert Manager	 | true | no |
| `defaultRules_etcd` | Create default rules for ETCD | false | no |
| `defaultRules_k8s` | Create K8S default rules	 | true | no |
| `defaultRules_kubeApiserver` | Create Api Server default rules		 | true | no |
| `skip_crds` | Skip kubernetes CRS creation | false | no |
