terraform {
  required_version = ">= 0.12.0"
}

resource "helm_release" "prometheus-operator" {
  name             = var.helm_chart_name
  chart            = "stable/prometheus-operator"
  version          = var.helm_chart_version
  namespace        = var.helm_chart_namespace
  skip_crds        = var.skip_crds
  create_namespace = var.create_namespace

  values = [
    templatefile("${path.module}/template/operator_values.tpl", {
      helm_chart_version                              = var.helm_chart_version
      helm_chart_name                                 = var.helm_chart_name
      helm_chart_namespace                            = var.helm_chart_namespace
      defaultRules_general                            = var.defaultRules_general
      defaultRules_PrometheusOperator                 = var.defaultRules_PrometheusOperator
      defaultRules_alertmanager                       = var.defaultRules_alertmanager
      defaultRules_etcd                               = var.defaultRules_etcd
      defaultRules_k8s                                = var.defaultRules_k8s
      defaultRules_kubeApiserver                      = var.defaultRules_kubeApiserver
      defaultRules_kubeApiserverError                 = var.defaultRules_kubeApiserverError
      defaultRules_kubeApiserverSlos                  = var.defaultRules_kubeApiserverSlos
      defaultRules_kubePrometheusNodeAlerting         = var.defaultRules_kubePrometheusNodeAlerting
      defaultRules_kubePrometheusNodeRecording        = var.defaultRules_kubePrometheusNodeRecording
      defaultRules_kubeScheduler                      = var.defaultRules_kubeScheduler
      defaultRules_kubernetesAbsent                   = var.defaultRules_kubernetesAbsent
      defaultRules_kubernetesApps                     = var.defaultRules_kubernetesApps
      defaultRules_kubernetesResources                = var.defaultRules_kubernetesResources
      defaultRules_kubernetesStorage                  = var.defaultRules_kubernetesStorage
      defaultRules_kubernetesSystem                   = var.defaultRules_kubernetesSystem
      defaultRules_network                            = var.defaultRules_network
      defaultRules_node                               = var.defaultRules_node
      defaultRules_prometheus                         = var.defaultRules_prometheus
      defaultRules_time                               = var.defaultRules_time
      prometheusOperator_manageCrds                   = var.prometheusOperator_manageCrds
      prometheusOperator_image_tag                    = var.prometheusOperator_image_tag
      prometheus_prometheusSpec_image_tag             = var.prometheus_prometheusSpec_image_tag
      prometheus_prometheusSpec_replicas              = var.prometheus_prometheusSpec_replicas
      prometheus_prometheusSpec_ruleNamespaceSelector = var.prometheus_prometheusSpec_ruleNamespaceSelector
      prometheus_service_type                         = var.prometheus_service_type
      alertmanagerSpec_image_tag                      = var.alertmanagerSpec_image_tag
      alertmanager_service_type                       = var.alertmanager_service_type
      grafana_adminPassword                           = var.grafana_adminPassword
      grafana_image_tag                               = var.grafana_image_tag
      grafana_service_type                            = var.grafana_service_type
      grafana_service_port                            = var.grafana_service_port

    })
  ]
}