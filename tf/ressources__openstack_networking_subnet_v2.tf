resource openstack_networking_subnet_v2 main {
  name       = "${var.ressources_prefix}main"
  network_id = openstack_networking_network_v2.main.id
  cidr       = var.main_subnet_cidr
  ip_version = 4
  dns_nameservers = var.dns_nameservers
}

resource openstack_networking_subnet_v2 ext {
  name       = "${var.ressources_prefix}ext"
  network_id = openstack_networking_network_v2.ext.id
  cidr       = var.ext_subnet_cidr
  ip_version = 4
  dns_nameservers = var.dns_nameservers
  allocation_pool {
    start = cidrhost(var.ext_subnet_cidr, 150)
    end = cidrhost(var.ext_subnet_cidr, 180)
  }
  no_gateway = true
}

resource openstack_networking_subnet_v2 proj {
  name       = "${var.ressources_prefix}proj"
  network_id = openstack_networking_network_v2.proj.id
  cidr       = var.proj_subnet_cidr
  enable_dhcp = false
  ip_version = 4
  no_gateway = true
}
