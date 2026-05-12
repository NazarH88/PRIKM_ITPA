output "ansible_inventory" {
  value = <<EOT
[app_servers]
app_node ansible_connection=docker

[monitor_servers]
monitor_node ansible_connection=docker
EOT
}
