terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0.2"
    }
  }
}

provider "docker" {}

# Використовуємо максимально стабільний образ з SSH
resource "docker_image" "ubuntu_ssh" {
  name = "lscr.io/linuxserver/openssh-server:latest"
}

resource "docker_container" "app_node" {
  name  = "app_node"
  image = docker_image.ubuntu_ssh.image_id
  env   = ["PUID=1000", "PGID=1000", "TZ=Europe/Kyiv", "PASSWORD_ACCESS=true", "USER_PASSWORD=password"]
  ports {
    internal = 80
    external = 8080
  }
}

resource "docker_container" "monitor_node" {
  name  = "monitor_node"
  image = docker_image.ubuntu_ssh.image_id
  env   = ["PUID=1000", "PGID=1000", "TZ=Europe/Kyiv", "PASSWORD_ACCESS=true", "USER_PASSWORD=password"]
  ports {
    internal = 3000
    external = 3000
  }
  ports {
    internal = 9090
    external = 9090
  }
}
