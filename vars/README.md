# OS Labs builder

This project provides a practical environment for trying Kolla OpenStack on OpenStack.

Based on Ansible and Terraform, it lets you create one or more identical infrastructures, on one or more OpenStack projects (all in one project, or one project per infrastructure).

- one *edgenode* with a floating-ip : useful to access other ressources
- one *controller* to deploy openstack control board
- one *compute* to support test VMs

Network 

- *main network* to access to VMs, with his *router*
- *ext network* is a fake external network (reachable from edgenode for test)
- *proj network* is for tenant network tunneling (VXLAN)

## Usage

* Ensure `terraform` and `ansible` are in your `$PATH`
* Ensure you've `clouds.yaml` in project folder
* Ensure you have one or more entry in `clouds.yaml` for OpenStack projects

Adapt `vars/labs.yaml` to your situation.

- name : the name of the lab
- index : used to customize CIDR for internal networks (useful if all labs are in the same project)
- cloud : `clouds.yaml` to use for this lab
- github_user : GitHub username (import pubkey in lab instances)

Adapt `vars/lab_config.yaml` to your situation.