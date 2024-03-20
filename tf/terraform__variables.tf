variable main_subnet_cidr {
    type = string
}

variable ext_subnet_cidr {
    type = string
}

variable proj_subnet_cidr {
    type = string
}

variable public_network {
    type = string
}

variable edgenode_flavor_name {
    type = string
}

variable flavor_name {
    type = string
}

variable keypair_name {
    type = string
}

variable remote_user {
    type = string
}

variable base_image {
    type = string
}

variable dns_nameservers {
    type = list(string)
}

variable ressources_prefix {
    type = string
}

variable cloud {
    type = string
}