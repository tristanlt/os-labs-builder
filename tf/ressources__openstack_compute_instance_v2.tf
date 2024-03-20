resource openstack_compute_instance_v2 edgenode {
  name            = "${var.ressources_prefix}edgenode"
  image_id        = data.openstack_images_image_v2.base_image.id
  flavor_name       = var.edgenode_flavor_name
  key_pair        = var.keypair_name
  security_groups = [data.openstack_networking_secgroup_v2.default.name]
  user_data =<<EOF
#!/bin/bash
ip route delete default via {{ cidrhost(var.ext_subnet_cidr, 1) }}
EOF 
  network {
    port     = openstack_networking_port_v2.edgenode-main.id
  }
  network {
    port     = openstack_networking_port_v2.edgenode-ext.id
  }
}

resource openstack_compute_instance_v2 controller {
  name            = "${var.ressources_prefix}controller"
  image_id        = data.openstack_images_image_v2.base_image.id
  flavor_name       = var.flavor_name
  key_pair        = var.keypair_name
  security_groups = [data.openstack_networking_secgroup_v2.default.name]
  user_data =<<EOF
#!/bin/bash
ip route delete default via {{ cidrhost(var.ext_subnet_cidr, 1) }}
ip route delete default via {{ cidrhost(var.proj_subnet_cidr, 1) }}
echo "net.ipv4.ip_forward=1" > /etc/sysctl.d/99-forward.conf
sysctl --system
EOF
  network {
    port     = openstack_networking_port_v2.controller-main.id
  }
  network {
    port     = openstack_networking_port_v2.controller-ext.id
  }
  network {
    port     = openstack_networking_port_v2.controller-proj.id
  }
}
resource openstack_compute_instance_v2 compute1 {
  name            = "${var.ressources_prefix}compute1"
  image_id        = data.openstack_images_image_v2.base_image.id
  flavor_name       = var.flavor_name
  key_pair        = var.keypair_name
  security_groups = [data.openstack_networking_secgroup_v2.default.name]
  user_data =<<EOF
#!/bin/bash
ip route delete default via {{ cidrhost(var.ext_subnet_cidr, 1) }}
ip route delete default via {{ cidrhost(var.proj_subnet_cidr, 1) }}
echo "net.ipv4.ip_forward=1" > /etc/sysctl.d/99-forward.conf
sysctl --system
EOF
  network {
    port     = openstack_networking_port_v2.compute1-main.id
  }
  network {
    port     = openstack_networking_port_v2.compute1-ext.id
  }
  network {
    port     = openstack_networking_port_v2.compute1-proj.id
  }
}