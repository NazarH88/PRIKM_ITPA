terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "3.0.2"
    }
  }
}

provider "docker" {}

resource "docker_image" "ubuntu_ssh" {
  # Цей образ базується на Ubuntu і має встановлений SSH
  name         = "rastasheep/ubuntu-sshd:latest"
  keep_locally = true
}

resource "docker_container" "app_node" {
  name  = "app_node"
  image = docker_image.ubuntu_ssh.image_id
  ports {
    internal = 80
    external = 8081
  }
  ports {
    internal = 22
    external = 2221
  }
}

resource "docker_container" "monitor_node" {
  name  = "monitor_node"
  image = docker_image.ubuntu_ssh.image_id
  ports {
    internal = 9090
    external = 9090
  }
  ports {
    internal = 3000
    external = 3000
  }
  ports {
    internal = 22
    external = 2222
  }
}
