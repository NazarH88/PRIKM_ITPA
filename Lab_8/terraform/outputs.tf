output "ansible_inventory" {
  value = <<EOT
[app_servers]
app_node ansible_connection=docker

[monitor_servers]
monitor_node ansible_connection=docker

[all:vars]
ansible_python_interpreter=/usr/bin/python3
EOT
}
