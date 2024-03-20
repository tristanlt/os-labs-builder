resource openstack_networking_network_v2 main {
  name           = "${var.ressources_prefix}main"
  admin_state_up = "true"
}

resource openstack_networking_network_v2 ext {
  name           = "${var.ressources_prefix}ext"
  admin_state_up = "true"
  mtu = 1350
}

resource openstack_networking_network_v2 proj {
  name           = "${var.ressources_prefix}proj"
  admin_state_up = "true"
  mtu = 1350
}