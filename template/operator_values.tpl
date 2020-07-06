# General rules
defaultRules:
    create: ${defaultRules_create}
    rules:
        general: ${defaultRules_general}
        PrometheusOperator: ${defaultRules_PrometheusOperator}
        alertmanager: ${defaultRules_alertmanager}
        etcd: ${defaultRules_etcd}
        k8s: ${defaultRules_k8s}
        kubeApiserver: ${defaultRules_kubeApiserver}
        kubeApiserverError: ${defaultRules_kubeApiserverError}
        kubeApiserverSlos: ${defaultRules_kubeApiserverSlos}
        kubePrometheusNodeAlerting: ${defaultRules_kubePrometheusNodeAlerting}
        kubePrometheusNodeRecording: ${defaultRules_kubePrometheusNodeRecording}
        kubeScheduler: ${defaultRules_kubeScheduler}
        kubernetesAbsent: ${defaultRules_kubernetesAbsent}
        kubernetesApps: ${defaultRules_kubernetesApps}
        kubernetesResources: ${defaultRules_kubernetesResources}
        kubernetesStorage: ${defaultRules_kubernetesStorage}
        kubernetesSystem: ${defaultRules_kubernetesSystem}
        network: ${defaultRules_network}
        node: ${defaultRules_node}
        prometheus: ${defaultRules_prometheus}
        time: ${defaultRules_time}

# Prometheus-Operator
prometheusOperator:
    manageCrds: ${prometheusOperator_manageCrds}
    image:
        tag: ${prometheusOperator_image_tag}

# Prometheus
prometheus:
    prometheusSpec:
        image:
            tag: ${prometheus_prometheusSpec_image_tag}
        replicas: ${prometheus_prometheusSpec_replicas}
        rule:
            NamespaceSelector:
                any: ${prometheus_prometheusSpec_ruleNamespaceSelector}
    service:
        type: ${prometheus_service_type}

# Alertmanager
alertmanager:
    alertmanagerSpec:
        image:
            tag: ${alertmanagerSpec_image_tag}
    service:
        type: ${alertmanager_service_type}

# Grafana
grafana:
    service:
        port: ${grafana_service_port}
        type: ${grafana_service_type}
    adminPassword: ${grafana_adminPassword}
    image:
        tag: ${grafana_image_tag}
