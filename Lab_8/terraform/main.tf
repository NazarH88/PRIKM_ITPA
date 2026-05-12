terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "3.0.2"
    }
  }
}

provider "docker" {}

# Використовуємо інше ім'я для образу, щоб скинути кеш
resource "docker_image" "ubuntu_fresh" {
  name         = "ubuntu:20.04"
  keep_locally = false
}

resource "docker_container" "app_server_new" {
  name  = "app_node"
  image = docker_image.ubuntu_fresh.image_id
  
  # Обов'язкові параметри, щоб контейнер не закривався
  tty   = true
  stdin_open = true
  command = ["tail", "-f", "/dev/null"]

  ports {
    internal = 80
    external = 8081
  }
}

resource "docker_container" "monitor_server_new" {
  name  = "monitor_node"
  image = docker_image.ubuntu_fresh.image_id
  
  tty   = true
  stdin_open = true
  command = ["tail", "-f", "/dev/null"]

  ports {
    internal = 9090
    external = 9090
  }
}
