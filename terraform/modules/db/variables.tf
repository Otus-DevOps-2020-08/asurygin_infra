variable public_key_path {
  description = "Path to the public key used for ssh access"
}
variable db_disk_image {
  description = "Disk image for reddit db"
  default     = "reddit-db"
}
variable subnet_id {
  description = "Subnets for modules"
}

variable private_key_path {
  description = "private_key_path"
}

variable name {
  description = "Database ip address"
  default = "reddit-db"
}

variable hostname {
  description = "Database ip address"
  default = "reddit-db"
}
