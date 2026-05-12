terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "3.0.2"
    }
  }
}

provider "docker" {}

resource "docker_image" "ubuntu" {
  name         = "ubuntu:20.04"
  keep_locally = true
}

resource "docker_container" "app_node" {
  name  = "app_node"
  image = docker_image.ubuntu.image_id
  command = ["tail", "-f", "/dev/null"]
  ports {
    internal = 80
    external = 8081
  }
}

resource "docker_container" "monitor_node" {
  name  = "monitor_node"
  image = docker_image.ubuntu.image_id
  command = ["tail", "-f", "/dev/null"]
  ports {
    internal = 9090
    external = 9090
  }
}
