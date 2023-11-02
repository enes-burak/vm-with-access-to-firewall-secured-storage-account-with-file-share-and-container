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

# name = 
# location = 
# resource_group_name = 
# ip_config_name = 
# subnet_id = 
# private_ip_address_allocation = 
# public_ip_address_id = 
