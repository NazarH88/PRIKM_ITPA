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
  # Це критично важливо:
  tty   = true
  stdin_open = true
  
  ports {
    internal = 80
    external = 8081
  }
}

resource "docker_container" "monitor_node" {
  name  = "monitor_node"
  image = docker_image.ubuntu.image_id
  tty   = true
  stdin_open = true

  ports {
    internal = 9090
    external = 9090
  }
  ports {
    internal = 3000
    external = 3000
  }
}
