output "ansible_inventory" {
  value = <<EOT
[app_servers]
app_node ansible_connection=docker

[monitor_servers]
prometheus ansible_connection=docker
grafana ansible_connection=docker
node_exporter ansible_connection=docker
EOT
}
