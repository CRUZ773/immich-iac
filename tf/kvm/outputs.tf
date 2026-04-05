output "node1_floating_ip" {
  description = "Public floating IP for node1 (use this for SSH and browser access)"
  value       = openstack_networking_floatingip_v2.node1_fip.address
}

output "node1_private_ip" {
  description = "node1 private IP on the cluster network"
  value       = "192.168.1.11"
}

output "node2_private_ip" {
  description = "node2 private IP on the cluster network"
  value       = "192.168.1.12"
}

output "node3_private_ip" {
  description = "node3 private IP on the cluster network"
  value       = "192.168.1.13"
}

output "mlflow_url" {
  description = "MLflow UI — open in browser after deployment"
  value       = "http://${openstack_networking_floatingip_v2.node1_fip.address}:8000"
}

output "immich_url" {
  description = "Immich web UI — open in browser after deployment"
  value       = "http://${openstack_networking_floatingip_v2.node1_fip.address}:2283"
}

output "minio_url" {
  description = "MinIO console — open in browser after deployment"
  value       = "http://${openstack_networking_floatingip_v2.node1_fip.address}:9001"
}
