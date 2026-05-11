terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0.1"
    }
  }
}

provider "docker" {}

resource "docker_image" "ubuntu" {
  name         = "ubuntu:20.04"
  keep_locally = true
}

resource "docker_container" "lab6_server" {
  image = docker_image.ubuntu.image_id
  name  = "lab6_target_host"
  
  entrypoint = ["tail", "-f", "/dev/null"]
  
  ports {
    internal = 80
    external = 8085
  }
}

# ЦІ РЯДКИ КРИТИЧНО ВАЖЛИВІ ДЛЯ ЛАБ 7:
output "server_ip" {
  value = "127.0.0.1" 
  description = "IP адреса для звіту"
}

output "ansible_inventory" {
  value = "[web_servers]\nlab6_target_host ansible_connection=docker"
  description = "Цей вивід Jenkins запише у файл для Ansible"
}
