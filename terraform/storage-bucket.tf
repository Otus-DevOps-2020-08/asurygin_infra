terraform {
  backend "s3" {
    endpoint   = "storage.yandexcloud.net"
    bucket     = "<terraform-state>"
    region     = "ru-central1"
    key        = "<terraform.tfstate"
    access_key = "ajeeb7cqaub49anu74qs"
    secret_key = "ajeeb7cqaub49anu74qs"

    skip_region_validation      = true
    skip_credentials_validation = true
  }
}
