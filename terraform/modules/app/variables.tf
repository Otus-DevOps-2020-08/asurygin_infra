variable public_key_path {
  description = "Path to the public key used for ssh access"
}
variable app_disk_image {
  description = "Disk image for reddit app"
  default     = "reddit-app-base"
}
variable subnet_id {
  description = "Subnets for modules"
}


variable private_key_path {
  description = "private_key_path"
}
variable db_ip_address {
  description = "Database ip address"
}

variable name {
  description = "Database ip address"
  default = "reddit-app"
}

variable hostname {
  description = "Database ip address"
  default = "reddit-app"
}

variable template {
  default = "/home/asurygin/Gitlab/asurygin_infra/terraform/modules/template"
}
