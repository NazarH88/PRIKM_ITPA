terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "3.0.2"
    }
  }
}

provider "docker" {}

# Створюємо контейнери з ПРЯМИМ посиланням на образ
resource "docker_container" "app_node_v2" {
  name  = "app_node_new"
  image = "ubuntu:20.04"
  
  # Обов'язково, щоб контейнер не "засинав"
  command = ["tail", "-f", "/dev/null"]
  tty = true
  stdin_open = true

  ports {
    internal = 80
    external = 8085 # Змінив порт про всяк випадок
  }
}

resource "docker_container" "monitor_node_v2" {
  name  = "monitor_node_new"
  image = "ubuntu:20.04"
  
  command = ["tail", "-f", "/dev/null"]
  tty = true
  stdin_open = true

  ports {
    internal = 9090
    external = 9091 # Змінив порт
  }
}
