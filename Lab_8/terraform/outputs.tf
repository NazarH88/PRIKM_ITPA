output "ansible_inventory" {
  value = <<EOT
[all:vars]
ansible_connection=docker
ansible_user=root
ansible_python_interpreter=/usr/bin/python3

[app_servers]
app_node

[monitor_servers]
monitor_node
EOT
}
