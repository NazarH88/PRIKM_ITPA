terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "3.0.2"
    }
  }
}

provider "docker" {}

resource "docker_container" "app_node_v2" {
  name  = "app_node"
  image = "ubuntu:20.04"

  command = ["tail", "-f", "/dev/null"]
  tty = true
  stdin_open = true

  ports {
    internal = 80
    external = 8085
  }
}

resource "docker_container" "monitor_node_v2" {
  name  = "monitor_node"
  image = "ubuntu:20.04"

  command = ["tail", "-f", "/dev/null"]
  tty = true
  stdin_open = true

  ports {
    internal = 9090
    external = 9091
  }
}
