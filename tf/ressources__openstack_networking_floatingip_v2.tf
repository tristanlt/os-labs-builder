resource openstack_networking_floatingip_v2 edgenode {
  pool = data.openstack_networking_network_v2.public.name
  description = "${var.ressources_prefix}edgenode"
  tags = ["fqdn=${var.ressources_prefix}edgenode.local"]
}