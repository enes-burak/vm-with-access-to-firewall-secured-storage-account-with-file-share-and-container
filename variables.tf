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

variable "nic-name" {
  type = string
}
variable "nic-ip-name" {
  type = string
}
variable "nic-private-ip-allocation" {
  type = string
}
variable "nic-public-ip-address-id" {
  type = string
}

variable "vm-name" {
  type = string
}
variable "vm-size" {
  type = string
}
variable "vm-user" {
  type = string
}
variable "vm-pass" {
  type = string
}
variable "vm-caching" {
  type = string
}
variable "vm-strg-acc-type" {
  type = string
}

variable "vm-publisher" {
  type = string
}
variable "vm-offer" {
  type = string
}
variable "vm-sku" {
  type = string
}
variable "vm-vrsn" {
  type = string
}