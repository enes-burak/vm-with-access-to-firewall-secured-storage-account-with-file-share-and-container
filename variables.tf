variable "rg_name" {
    type = string
    default = "rg"  
}
variable "location" {
    type = string
  default = "canadacentral"
}
variable "vnet_name"{
    type = string
    default = "vnet1"
}
variable "vnet_address_space"{
    type = list(string)
    default = ["10.70.0.0/16"]
}
variable "subnet_name"{
    type = string
    default = "subnet1"
}
variable "subnet_address_space"{
    type = list(string)
    default = ["10.70.0.0/24"]
}
variable "nci1_name"{
    type = string
    default = "nci1"
}
variable "ipconfig1_name"{
    type = string
    default = "ipconfig1"
}
variable "ipconfig1_alloc"{
    type = string
    default = "Dynamic"
}
variable "vm1_name"{
    type = string
    default = "vm1"
}
variable "vm1_size"{
    type = string
    default = "Standard_DS1_v2"
}
variable "storage_image_ref_pub"{
    type = string
    default = "Canonical"
}
variable "storage_image_ref_offer"{
    type = string
    default = "UbuntuServer"
}
variable "storage_image_ref_sku"{
    type = string
    default = "16.04-LTS"
}
variable "storage_image_ref_version"{
    type = string
    default = "latest"
}
variable "storage_os_disk1_name"{
    type = string
    default = "my_os_disk1"
}
variable "storage_os_disk1_caching"{
    type = string
    default = "ReadWrite"
}
variable "storage_os_disk1_create_option"{
    type = string
    default = "FromImage"
}
variable "storage_os_disk1_managed_disk_type" {
    type = string
    default = "Standard_LRS"  
}
variable "os_profile_comp_name"{
    type = string
    default = "pc1"
}
variable "os_profile_user"{
    type = string
    default = "burak"
}
variable "os_profile_pass"{
    type = string
    default = "Burak123!"
}
variable "os_profile_linux_config1"{
    type = bool
    default = false
}

############# TASK 2    #####################################

variable "rg_name2"{
    type = string
    default = "rg2"
}
variable "storage_acc1_name"{
    type = string
    default = "burakstorageacc1"
}
variable "storage_acc1_acc_tier"{
    type = string
    default = "Standard"
}
variable "storage_acc1_replic_type"{
    type = string
    default = "LRS"
}
variable "container1_name"{
    type = string
    default = "vhds"
}
variable "container1_access_type"{
    type = string
    default = "private"
}

############## TASK 5 #######################

variable "f_share_name"{
    type = string
    default = "burakshare"
}
variable "f_share_quota"{
    type = number
    default = 50
}
variable "f_share_acl_id"{
    type = string
    default = "MTIzNDU2Nzg5MDEyMzQ1Njc4OTAxMjM0NTY3ODkwMTI"
}
variable "f_share_access_policy_permissions"{
    type = string
    default = "rwdl"
}
variable "f_share_access_policy_start"{
    type = string
    default = "2022-03-16T00:38:21.0000000Z"
}
variable "f_share_access_policy_expiry"{
    type = string
    default = "2019-03-21T12:38:21.0000000Z"
}


############### Task 6 ##################################

variable "public_ip_name"{
    type = string
    default = "burakpip"
}
variable "public_ip_allocation"{
    type = string
    default = "Static"
}
variable "public_ip_sku"{
    type = string
    default = "Standard"
}
variable "firewall_name"{
    type = string
    default = "firewall1"
}
variable "firewall_sku_name"{
    type = string
    default = "AZFW_VNet"
}
variable "firewall_sku_tier"{
    type = string
    default = "Basic"
}
variable "ip_config_name"{
    type = string
    default = "ip_config"
}
variable "firewall_subnet_name"{
    type = string
    default = "AzureFirewallSubnet"
}
variable "firewall_subnet_address_space"{
    type = list(string)
    default = ["10.71.1.0/24"]
}