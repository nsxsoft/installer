variable "bootstrap_dns" {
  default     = true
  description = "Whether to include DNS entries for the bootstrap node or not."
}

variable "tectonic_libvirt_uri" {
  type        = "string"
  description = "libvirt connection URI"
}

variable "tectonic_libvirt_network_if" {
  type        = "string"
  description = "The name of the bridge to use"
}

variable "tectonic_libvirt_ip_range" {
  type        = "string"
  description = "IP range for the libvirt machines"
}

variable "tectonic_os_image" {
  type        = "string"
  description = "The URL of the OS disk image"
}

variable "tectonic_libvirt_bootstrap_ip" {
  type        = "string"
  description = "the desired bootstrap ip"
}

variable "tectonic_libvirt_master_ips" {
  type        = "list"
  description = "the list of desired master ips. Must match tectonic_master_count"
}

# It's definitely recommended to bump this if you can.
variable "libvirt_master_memory" {
  type        = "string"
  description = "RAM in MiB allocated to masters"
  default     = "4096"
}

# At some point this one is likely to default to the number
# of physical cores you have.  See also
# https://pagure.io/standard-test-roles/pull-request/223
variable "libvirt_master_vcpu" {
  type        = "string"
  description = "CPUs allocated to masters"
  default     = "2"
}
