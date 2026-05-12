terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "3.0.2"
    }
  }
}

provider "docker" {}

resource "docker_network" "monitor_net" {
  name = "monitor-net"
}

# APP (nginx)
resource "docker_container" "app_node" {
  name  = "app_node"
  image = "nginx:latest"

  ports {
    internal = 80
    external = 8085
  }

  networks_advanced {
    name = docker_network.monitor_net.name
  }
}

# NODE EXPORTER (CPU metrics)
resource "docker_container" "node_exporter" {
  name  = "node_exporter"
  image = "prom/node-exporter:latest"

  ports {
    internal = 9100
    external = 9100
  }

  networks_advanced {
    name = docker_network.monitor_net.name
  }
}

# PROMETHEUS
resource "docker_container" "prometheus" {
  name  = "prometheus"
  image = "prom/prometheus:latest"

  ports {
    internal = 9090
    external = 9091
  }

  command = [
    "--config.file=/etc/prometheus/prometheus.yml"
  ]

  volumes {
    host_path      = "${path.module}/prometheus.yml"
    container_path = "/etc/prometheus/prometheus.yml"
  }

  networks_advanced {
    name = docker_network.monitor_net.name
  }
}

# GRAFANA
resource "docker_container" "grafana" {
  name  = "grafana"
  image = "grafana/grafana:latest"

  ports {
    internal = 3000
    external = 3000
  }

  env = [
    "GF_SECURITY_ADMIN_PASSWORD=admin"
  ]

  networks_advanced {
    name = docker_network.monitor_net.name
  }
}

output "ansible_inventory" {
  value = <<EOT
[app_servers]
app_node ansible_connection=docker

[monitor_servers]
prometheus ansible_connection=docker
grafana ansible_connection=docker
node_exporter ansible_connection=docker
EOT
}
