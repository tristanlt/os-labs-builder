resource openstack_networking_secgroup_rule_v2 ssh {
  security_group_id = openstack_networking_secgroup_v2.training_default.id
  description       = "22 TCP"
  direction         = "ingress"
  ethertype         = "IPv4"
  protocol          = "tcp"
  port_range_min    = 22
  port_range_max    = 22
  remote_ip_prefix  = "0.0.0.0/0"
}

resource openstack_networking_secgroup_rule_v2 wireguard {
  security_group_id = openstack_networking_secgroup_v2.training_default.id
  description       = "wireguard UDP"
  direction         = "ingress"
  ethertype         = "IPv4"
  protocol          = "udp"
  port_range_min    = 51820
  port_range_max    = 51820
  remote_ip_prefix  = "0.0.0.0/0"
}


resource openstack_networking_secgroup_rule_v2 ping {
  security_group_id = openstack_networking_secgroup_v2.training_default.id
  description       = "ICMP"
  direction         = "ingress"
  ethertype         = "IPv4"
  protocol          = "icmp"
  port_range_min    = 0
  port_range_max    = 0
  remote_ip_prefix  = "0.0.0.0/0"
}