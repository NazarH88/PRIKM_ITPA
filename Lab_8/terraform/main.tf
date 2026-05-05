terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0"
    }
  }
}

provider "docker" {}

resource "docker_network" "lab8" {
  name = "lab8-network"
}

resource "docker_container" "app" {
  name  = "lab8-app"
  image = "nazarh88/prikm:latest"

  networks_advanced {
    name = docker_network.lab8.name
  }

  ports {
    internal = 80
    external = 8097
  }
}

resource "docker_container" "node_exporter" {
  name  = "lab8-node-exporter"
  image = "prom/node-exporter:latest"

  networks_advanced {
    name = docker_network.lab8.name
  }

  ports {
    internal = 9100
    external = 9101
  }
}
