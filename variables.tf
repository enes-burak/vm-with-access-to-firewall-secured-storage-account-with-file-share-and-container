#Resource Group
variable "rg1-name" {
  type = string
}

variable "rg1-location" {
  type = string
}

#Virtual Network
variable "vnet-name" {
  type = string
}

variable "vnet-address-space" {
  type = list(string)
}

variable "vnet-dns-servers" {
  type = list(string)
}

#Subnet
variable "subnet-name" {
  type = string
}

variable "subnet-address-prefixes" {
  type = list(string)
}
