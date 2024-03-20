output "edgenode_fip_address" {
  value = openstack_networking_floatingip_v2.edgenode.address
}
output "edgenode_ip_address" {
  value = openstack_networking_port_v2.edgenode-main.fixed_ip
}
output "edgenode_name" {
  value = openstack_compute_instance_v2.edgenode.name
}

output "controller_ip_address" {
  value = openstack_networking_port_v2.controller-main.fixed_ip
}
output "controller_name" {
  value = openstack_compute_instance_v2.controller.name
}

output "compute1_ip_address" {
  value = openstack_networking_port_v2.compute1-main.fixed_ip
}
output "compute1_name" {
  value = openstack_compute_instance_v2.compute1.name
}