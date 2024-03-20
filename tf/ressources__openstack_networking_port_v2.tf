
resource openstack_networking_port_v2 edgenode-main {
  name           = "${var.ressources_prefix}edgenode"
  network_id     = openstack_networking_network_v2.main.id
  admin_state_up = "true"
  fixed_ip {
    subnet_id = openstack_networking_subnet_v2.main.id
    ip_address = cidrhost(var.main_subnet_cidr, 10)
  }
}

resource openstack_networking_port_v2 controller-main {
  name           = "${var.ressources_prefix}controller"
  network_id     = openstack_networking_network_v2.main.id
  admin_state_up = "true"
  fixed_ip {
    subnet_id = openstack_networking_subnet_v2.main.id
    ip_address = cidrhost(var.main_subnet_cidr, 20)
  }
}

resource openstack_networking_port_v2 compute1-main {
  name           = "${var.ressources_prefix}compute1"
  network_id     = openstack_networking_network_v2.main.id
  admin_state_up = "true"
  fixed_ip {
    subnet_id = openstack_networking_subnet_v2.main.id
    ip_address = cidrhost(var.main_subnet_cidr, 30)
  }
}






resource openstack_networking_port_v2 edgenode-ext {
  name           = "${var.ressources_prefix}edgenode-ext"
  network_id     = openstack_networking_network_v2.ext.id
  admin_state_up = "true"
  port_security_enabled = "false"
  no_security_groups = "true"
  fixed_ip {
    subnet_id = openstack_networking_subnet_v2.ext.id
    ip_address = cidrhost(var.ext_subnet_cidr, 10)
  }
}

resource openstack_networking_port_v2 controller-ext {
  name           = "${var.ressources_prefix}controller-ext"
  network_id     = openstack_networking_network_v2.ext.id
  admin_state_up = "true"
  port_security_enabled = "false"
  no_security_groups = "true"
  fixed_ip {
    subnet_id = openstack_networking_subnet_v2.ext.id
    ip_address = cidrhost(var.ext_subnet_cidr, 20)
  }
}

resource openstack_networking_port_v2 compute1-ext {
  name           = "${var.ressources_prefix}compute1-ext"
  network_id     = openstack_networking_network_v2.ext.id
  admin_state_up = "true"
  port_security_enabled = "false"
  no_security_groups = "true"
  fixed_ip {
    subnet_id = openstack_networking_subnet_v2.ext.id
    ip_address = cidrhost(var.ext_subnet_cidr, 30)
  }
}



resource openstack_networking_port_v2 controller-proj {
  name           = "${var.ressources_prefix}controller-proj"
  network_id     = openstack_networking_network_v2.proj.id
  admin_state_up = "true"
  port_security_enabled = "false"
  no_security_groups = "true"
  fixed_ip {
    subnet_id = openstack_networking_subnet_v2.proj.id
    ip_address = cidrhost(var.proj_subnet_cidr, 20)
  }
}

resource openstack_networking_port_v2 compute1-proj {
  name           = "${var.ressources_prefix}compute1-proj"
  network_id     = openstack_networking_network_v2.proj.id
  admin_state_up = "true"
  port_security_enabled = "false"
  no_security_groups = "true"
  fixed_ip {
    subnet_id = openstack_networking_subnet_v2.proj.id
    ip_address = cidrhost(var.proj_subnet_cidr, 30)
  }
}

