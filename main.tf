# Create first resource group
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

# # Create a public IP
module "public-ip" {
  source = "./modules/public_ip"
  name = var.public-ip-name
  resource_group_name = module.rg1.name
  location = module.rg1.location
  allocation_method = var.public-ip-allocation-method
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
  public_ip_address_id = module.public-ip.public-ip-id
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

  # Source image reference
  publisher = var.vm-publisher
  offer = var.vm-offer
  sku = var.vm-sku
  vrsn = var.vm-vrsn
}

# VM Extension
module "vm-extension" {
  source = "./modules/vm_extension"
  name = var.vm-ext-name
  virtual_machine_id = module.vm.vm-id
  publisher = var.vm-ext-publisher
  type = var.vm-ext-type
  type_handler_version = var.vm-ext-type-handler-version 
  settings = <<SETTINGS
  {    
    "commandToExecute": "powershell -command \"[System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String('${base64encode(data.template_file.mypowershellscript.rendered)}')) | Out-File -filepath mypowershellscript.ps1"
  }
  SETTINGS
  
}
# Data for VM extension
data "template_file" "mypowershellscript" {
    template = file("mypowershellscript.ps1")
}

# # Create second resource group
module "rg2" {
  source = "./modules/resource_group"
  name = var.rg2-name
  location = var.rg2-location
}

# # Create storage account

module "storage1" {
  source = "./modules/storage_account"
  name = var.stor-name
  resource_group_name = module.rg2.name
  location = module.rg2.location
  account_tier = var.stor-acc-tier
  account_replication_type = var.stor-replication-type
  # Networking Rules
  default_action = var.stor-net-default-action
  ip_rules = var.stor-net-ip-rules
}

# # Create container
module "container1" {
  source = "./modules/storage_container"
  name = var.container-name
  storage_account_name = module.storage1.name
  container_access_type = var.container-access-type
  }

# Create SAS token
module "storage-sas-token" {
  source = "./modules/storage-sas-token"
  connection_string = module.storage1.connection_string
  https_only = var.stor-sas-https-only
  signed_version = var.stor-sas-signed-version
  # Resource types
  service = var.stor-sas-service
  container = var.stor-sas-container
  object = var.stor-sas-object
  # Services
  blob = var.stor-sas-blob
  queue = var.stor-sas-queue
  table = var.stor-sas-table
  file = var.stor-sas-file
  # Token Timer
  start = var.stor-sas-start
  expiry = var.stor-sas-expiry
  # Permissions
  read = var.stor-sas-read
  write = var.stor-sas-write
  delete = var.stor-sas-delete
  list = var.stor-sas-list
  add = var.stor-sas-add
  create = var.stor-sas-create
  update = var.stor-sas-update
  process = var.stor-sas-process
  tag = var.stor-sas-tag
  filter = var.stor-sas-filter
}

# Role Assignment
data "azurerm_subscription" "primary" {}
data "azurerm_client_config" "client-config" {}
module "role-assignment0" {
  source = "./modules/role_assignment"
  scope = data.azurerm_subscription.primary.id
  role_definition_name = var.role-definition-name
  principal_id = data.azurerm_client_config.client-config.object_id
  }

# File Share
module "file-share" {
  source = "./modules/file_share"
  name = var.file-share-name
  storage_account_name = module.storage1.name
  quota = var.file-share-quota
  # ACL
  id = var.file-share-id
  # Access Policy
  permissions = var.file-share-permissions
  start = var.file-share-start
  expiry = var.file-share-expiry
}

# File Upload to Share
module "file-share-upload" {
  source = "./modules/file_share_upload"
  name = var.file-upload-name
  storage_share_id = module.file-share.file-share-id
  file_source =  var.file-upload-source
}

# Blob Upload to Container
module "blob-upload" {
  source = "./modules/blob_upload"
  name = var.blob-upload-name
  storage_account_name = module.storage1.name
  storage_container_name = module.container1.container-name
  type = var.blob-upload-type
  blob_source = var.blob-upload-source
}

