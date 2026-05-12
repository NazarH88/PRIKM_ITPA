output "ansible_inventory" {
  value = <<EOT
[all:vars]
ansible_user=root
ansible_password=password
ansible_become=yes

[app_servers]
app_node ansible_connection=docker

[monitor_servers]
monitor_node ansible_connection=docker
EOT
}
