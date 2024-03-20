resource openstack_networking_floatingip_associate_v2 edgenode {
  floating_ip = openstack_networking_floatingip_v2.edgenode.address
  port_id     = openstack_networking_port_v2.edgenode-main.id
}