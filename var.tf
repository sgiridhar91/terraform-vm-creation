variable "location" {
  default = "KoreaCentral"
}

variable "rg_name" {
  default = "test-rg-giri"
}

variable "vnet_name" {
  default = "giri-vnet"
}

variable "address_space" {
  default = ["10.0.0.0/16"]
}

variable "subnet_name" {
  default = "subnet1"
}

variable "subnet_prefix" {
  default = ["10.0.1.0/24"]
}

