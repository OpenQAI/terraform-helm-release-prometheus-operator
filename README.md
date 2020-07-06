![Lint](https://github.com/OpenQAI/terraform-helm-release-prometheus-operator/workflows/Lint/badge.svg?branch=master)
### terraform-helm-release-prometheus-operator

Description:
-
Deploys prometheus-operator helm chart. 

Usage: 
- Deploy prometheus-operator without the default rules)

```
module "release-prometheus-operator" {
  source  = "OpenQAI/release-prometheus-operator/helm"
  version = "0.0.X"

  defaultRules_create    = false
  helm_chart_version     = "8.15.6"
  helm_chart_namespace   = "monitoring"
  skip_crds              =  false
  grafana_adminPassword  = "pa$$w0rd"
  
}
```

Usage
- Deploy prometheus-operator with Grafana 7.0.3 and specified password in the namespace `monitoring`

```
module "release-prometheus-operator" {
  source  = "OpenQAI/release-prometheus-operator/helm"
  version = "0.0.X"

  helm_chart_version     = "8.15.6"
  helm_chart_namespace   = "monitoring"
  skip_crds              =  false
  grafana_image_tag      = "7.0.3"
  grafana_adminPassword  = "pa$$w0rd"
  
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
