output "ansible_inventory" {
  value = <<EOT
[all:vars]
ansible_connection=docker
ansible_user=root

[app_servers]
app_node

[monitor_servers]
monitor_node
EOT
}
