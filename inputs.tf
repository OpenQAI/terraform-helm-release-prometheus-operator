# Helm Chart
variable "helm_chart_version" {
  description = "Helm chart version"
  default     = "8.15.11"
}
variable "helm_chart_name" {
  description = "Helm chart name"
  default     = "prometheus-operator"
}
variable "helm_chart_namespace" {
  description = "Kubernetes namespace to deploy"
  default     = "monitoring"
}
variable "skip_crds" {
  default = false
}
variable "create_namespace" {
  default = true
}
# General values
variable "defaultRules_general" {
  default = true
}

variable "defaultRules_create" {
  description = "Create default rules for monitoring the cluster"
  default     = true
}

variable "defaultRules_PrometheusOperator" {
  default = true
}
variable "defaultRules_alertmanager" {
  default = true
}
variable "defaultRules_etcd" {
  default = false
}
variable "defaultRules_k8s" {
  default = true
}
variable "defaultRules_kubeApiserver" {
  default = true
}
variable "defaultRules_kubeApiserverError" {
  default = true
}
variable "defaultRules_kubeApiserverSlos" {
  default = true
}
variable "defaultRules_kubePrometheusNodeAlerting" {
  default = true
}
variable "defaultRules_kubePrometheusNodeRecording" {
  default = true
}
variable "defaultRules_kubeScheduler" {
  default = true
}
variable "defaultRules_kubernetesAbsent" {
  default = true
}
variable "defaultRules_kubernetesApps" {
  default = true
}
variable "defaultRules_kubernetesResources" {
  default = true
}
variable "defaultRules_kubernetesStorage" {
  default = true
}
variable "defaultRules_kubernetesSystem" {
  default = true
}
variable "defaultRules_network" {
  default = true
}
variable "defaultRules_node" {
  default = true
}
variable "defaultRules_prometheus" {
  default = true
}
variable "defaultRules_time" {
  default = true
}

# Prometheus-Operator - Values
variable "prometheusOperator_manageCrds" {
  default = true
}
variable "prometheusOperator_image_tag" {
  default = "v0.38.1"
}

# Prometheus - Values
variable "prometheus_prometheusSpec_image_tag" {
  description = "Tag of Prometheus container image to be deployed."
  default     = "v2.18.1"
}
variable "prometheus_prometheusSpec_replicas" {
  description = "Number of instances to deploy for a Prometheus deployment."
  default     = "1"
}
variable "prometheus_prometheusSpec_ruleNamespaceSelector" {
  description = "Namespaces to be selected for PrometheusRules discovery."
  default     = true
}
variable "prometheus_service_type" {
  description = "Prometheus Service type"
  default     = "ClusterIP"
}
variable "alertmanagerSpec_image_tag" {
  description = "Tag of Alertmanager container image to be deployed."
  default     = "v0.20.0"
}
variable "alertmanager_service_type" {
  description = "Alertmanager Service type"
  default     = "ClusterIP"
}
variable "grafana_adminPassword" {
  description = "Admin password to log into the grafana UI	"
  default     = "pa$$w0rd"
}
variable "grafana_image_tag" {
  description = "Image tag. (Must be >= 5.0.0)"
  default     = "7.0.3"
}
variable "grafana_service_type" {
  description = "Kubernetes service type"
  default     = "ClusterIP"
}
variable "grafana_service_port" {
  description = "Kubernetes port where service is exposed"
  default     = "3000"
}


