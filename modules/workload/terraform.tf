# WARNING: Unable the SELinux for qemu
# Ref: https://github.com/dmacvicar/terraform-provider-libvirt/issues/546
terraform {
  required_providers {
    libvirt = {
      source = "dmacvicar/libvirt"
    }
  }
}

# Configure the Libvirt provider
provider "libvirt" {
  uri = "qemu+ssh://${var.ssh_connection.username}@${var.ssh_connection.host}/system?keyfile=${var.ssh_connection.private_key_path}"
}
