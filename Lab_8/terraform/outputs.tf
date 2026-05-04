output "node_exporter_target" {
  value = "lab8-node-exporter:9100"
}

output "app_url" {
  value = "http://localhost:8097"
}

output "ansible_inventory" {
  value = "[local]\nlocalhost ansible_connection=local\n"
}
