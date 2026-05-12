terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0.1"
    }
  }
}

provider "docker" {}

# Використовуємо звичайну Ubuntu
resource "docker_image" "ubuntu" {
  name         = "ubuntu:20.04"
  keep_locally = true
}

resource "docker_container" "lab6_server" {
  image = docker_image.ubuntu.image_id
  name  = "lab6_target_host"
  
  # Цей рядок не дасть контейнеру закритися
  entrypoint = ["tail", "-f", "/dev/null"]
  
  ports {
    internal = 80
    external = 8085
  }
}
