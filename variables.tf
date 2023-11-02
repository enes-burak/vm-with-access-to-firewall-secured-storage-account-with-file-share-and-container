# Resource Group
variable "rg1-name" {
  type = string
}

variable "rg1-location" {
  type = string
}

# Virtual Network
variable "vnet-name" {
  type = string
}

variable "vnet-address-space" {
  type = list(string)
}

variable "vnet-dns-servers" {
  type = list(string)
}

# Subnet
variable "subnet-name" {
  type = string
}

variable "subnet-address-prefixes" {
  type = list(string)
}

# Network interface card
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

# Virtual Machine
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
# OS Disk
variable "vm-caching" {
  type = string
}
variable "vm-strg-acc-type" {
  type = string
}
# Source image reference
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
# Resource Group 2
variable "rg2-name" {
    type = string
}
variable "rg2-location" {
  type = string
}

# Storage account
variable "stor-name" {
  type = string
}
variable "stor-acc-tier" {
  type = string
}
variable "stor-replication-type" {
  type = string
}



