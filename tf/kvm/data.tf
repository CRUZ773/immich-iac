# Look up the shared external network
data "openstack_networking_network_v2" "sharednet1" {
  name = "sharednet1"
}

# Look up the subnet on sharednet1
data "openstack_networking_subnet_v2" "sharednet1_subnet" {
  network_id = data.openstack_networking_network_v2.sharednet1.id
}

# Security groups (created once per project by instructor)
data "openstack_networking_secgroup_v2" "allow_ssh" {
  name = "allow-ssh"
}

data "openstack_networking_secgroup_v2" "allow_8080" {
  name = "allow-8080"
}

data "openstack_networking_secgroup_v2" "allow_9000" {
  name = "allow-9000"
}

data "openstack_networking_secgroup_v2" "allow_http" {
  name = "allow-http"
}

data "openstack_networking_secgroup_v2" "allow_https" {
  name = "allow-https"
}

# Ubuntu 22.04 base image
data "openstack_images_image_v2" "ubuntu" {
  name = "CC-Ubuntu22.04"
}
