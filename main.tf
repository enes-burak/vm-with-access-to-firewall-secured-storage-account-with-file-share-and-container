#########   TASK 1    ###########################################

# Create first resource group

# resource "azurerm_resource_group" "rg1"{
#   name     = var.rg_name
#   location = var.location
# }
module "rg1" {
  source = "./modules/resource_group"
  name = var.rg1-name
  location = var.rg1-location
}

# # Create a virtual network inside of our resource group

module "vnet" {
  source = "./modules/virtual_network"
  name = var.vnet-name
  address_space = var.vnet-address-space
  location = module.rg1.location
  resource_group_name = module.rg1.name
  dns_servers = var.vnet-dns-servers
}

# # Create a subnet within our virtual network

module "subnet" {
  source = "./modules/subnet"
  name = var.subnet-name
  resource_group_name = module.rg1.name
  location = module.rg1.location
  virtual_network_name = module.vnet.name
  address_prefixes = var.subnet-address-prefixes
}

# # Create a network interface card for our VM to use

module "nic" {
  source = "./modules/network_interface_card"
  name = var.nic-ip-name
  location = module.rg1.location
  resource_group_name = module.rg1.name
  ip_config_name = var.nic-ip-name
  subnet_id = module.subnet.subnet_id
  private_ip_address_allocation = var.nic-private-ip-allocation
  public_ip_address_id = var.nic-public-ip-address-id
}

# # Create a Windows VM and connect it to our Network Interface Card

module "vm" {
  source = "./modules/virtual_machine"
  name = var.vm-name
  resource_group_name = module.rg1.name
  location = module.rg1.location
  size = var.vm-size
  admin_username = var.vm-user
  admin_password = var.vm-pass
  network_interface_ids = [module.nic.nic_id]

  # OS Disk
  caching = var.vm-caching
  storage_account_type = var.vm-strg-acc-type

  # Soruce image reference
  publisher = var.vm-publisher
  offer = var.vm-offer
  sku = var.vm-sku
  vrsn = var.vm-vrsn
}



# resource "azurerm_virtual_machine" "vm1"{
#     name = var.vm1_name
#     resource_group_name = azurerm_resource_group.rg1.name
#     location = azurerm_resource_group.rg1.location
#     network_interface_ids = [azurerm_network_interface.nci1.id]
#     vm_size = var.vm1_size
#     storage_image_reference {
#     publisher = var.storage_image_ref_pub
#     offer     = var.storage_image_ref_offer
#     sku       = var.storage_image_ref_sku
#     version   = var.storage_image_ref_version
#     }
#     storage_os_disk {
#     name              = var.storage_os_disk1_name
#     caching           = var.storage_os_disk1_caching
#     create_option     = var.storage_os_disk1_create_option
#     managed_disk_type = var.storage_os_disk1_managed_disk_type
#     }
#     os_profile {
#     computer_name  = var.os_profile_comp_name
#     admin_username = var.os_profile_user
#     admin_password = var.os_profile_pass
#     }
#     os_profile_linux_config {
#     disable_password_authentication = var.os_profile_linux_config1
#     }
# }


# ############# TASK 2    #####################################

# # Create second resource group along with a storage account inside it

# resource "azurerm_resource_group" "rg2"{
#   name     = var.rg_name2
#   location = var.location
# }
# resource "azurerm_storage_account" "storage_acc1" {
#   name                     = var.storage_acc1_name
#   resource_group_name      = azurerm_resource_group.rg2.name
#   location                 = azurerm_resource_group.rg2.location
#   account_tier             = var.storage_acc1_acc_tier
#   account_replication_type = var.storage_acc1_replic_type
# }


# ############### Task 3 #########################################

# # Create container

# resource "azurerm_storage_container" "container1" {
#   name                  = var.container1_name
#   storage_account_name  = azurerm_storage_account.storage_acc1.name
#   container_access_type = var.container1_access_type
# }

# # Uploading of "LICENSE" file done through Azure Portal

# ################ Task 4 ########################################


# ################ Task 5 ########################################

# # Create file share 


# resource "azurerm_storage_share" "file_share1" {
#   name                 = var.f_share_name
#   storage_account_name = azurerm_storage_account.storage_acc1.name
#   quota                = var.f_share_quota

#   acl {
#     id = var.f_share_acl_id
#     access_policy {
#         permissions = var.f_share_access_policy_permissions
#         start       = var.f_share_access_policy_start
#         expiry      = var.f_share_access_policy_expiry
#     }
#   }
# }

################# Task 6 ########################################

# Creating a firewall to limit public access

# resource "azurerm_subnet" "firewallsubnet" {
#   name                 = var.firewall_subnet_name
#   resource_group_name  = azurerm_resource_group.rg1.name
#   virtual_network_name = azurerm_virtual_network.vnet.name
#   address_prefixes     = var.firewall_subnet_address_space
# }

# resource "azurerm_public_ip" "publicip1" {
#   name                = var.public_ip_name
#   location            = azurerm_resource_group.rg1.location
#   resource_group_name = azurerm_resource_group.rg1.name
#   allocation_method   = var.public_ip_allocation
#   sku                 = var.public_ip_sku
# }

# resource "azurerm_firewall" "firewall1" {
#   name                = var.firewall_name
#   location            = azurerm_resource_group.rg1.location
#   resource_group_name = azurerm_resource_group.rg1.name
#   sku_name            = var.firewall_sku_name
#   sku_tier            = var.firewall_sku_tier

#   ip_configuration {
#     name                 = var.ip_config_name
#     subnet_id            = azurerm_subnet.firewallsubnet.id
#     public_ip_address_id = azurerm_public_ip.publicip1.id
#   }
# }

