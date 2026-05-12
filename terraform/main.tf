terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "3.0.2"
    }
  }
}

provider "docker" {}

# ---------- APP ----------
resource "docker_container" "app_node" {
  name  = "app_node"
  image = "nginx:latest"

  ports {
    internal = 80
    external = 8085
  }
}

# ---------- PROMETHEUS ----------
resource "docker_container" "prometheus" {
  name  = "prometheus"
  image = "prom/prometheus:latest"

  ports {
    internal = 9090
    external = 9091
  }

  volumes {
    host_path      = "${path.module}/prometheus.yml"
    container_path = "/etc/prometheus/prometheus.yml"
  }
}

# ---------- NODE EXPORTER ----------
resource "docker_container" "node_exporter" {
  name  = "node_exporter"
  image = "prom/node-exporter:latest"

  ports {
    internal = 9100
    external = 9100
  }
}

# ---------- GRAFANA ----------
resource "docker_container" "grafana" {
  name  = "grafana"
  image = "grafana/grafana:latest"

  ports {
    internal = 3000
    external = 3000
  }
}
