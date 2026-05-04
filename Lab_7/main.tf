terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0"
    }
  }
}

provider "docker" {}

# Завантажуємо образ Nginx
resource "docker_image" "nginx" {
  name         = "nginx:latest"
  keep_locally = true
}

# Створюємо перший контейнер-сервер (порт 8090)
resource "docker_container" "web_server_1" {
  name  = "web-app-1"
  image = docker_image.nginx.image_id
  ports {
    internal = 80
    external = 8090
  }
}

# Створюємо другий контейнер-сервер (порт 8092)
resource "docker_container" "web_server_2" {
  name  = "web-app-2"
  image = docker_image.nginx.image_id
  ports {
    internal = 80
    external = 8092
  }
}

# Цей блок автоматично створить налаштування для Ansible
output "ansible_inventory" {
  value = "[servers]\nlocalhost ansible_connection=local\n"
}
