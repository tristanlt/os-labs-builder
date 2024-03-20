resource openstack_networking_router_interface_v2 main {
  router_id = openstack_networking_router_v2.public_to_main.id
  subnet_id = openstack_networking_subnet_v2.main.id
}