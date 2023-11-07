# Resource group 1
rg1-name = "rg1"
rg1-location = "Canada East"

# Virtual Network
vnet-name = "vnet"
vnet-address-space = ["10.70.0.0/22"] 
vnet-dns-servers =  ["10.70.0.4", "10.70.0.5"]

# Subnet
subnet-name = "subnet"
subnet-address-prefixes = [ "10.70.0.0/24" ]

# Public IP
public-ip-name = "public-ip"
public-ip-allocation-method = "Dynamic"

# Network Interface Card
nic-name = "nic"
nic-ip-name = "nic-ip-config"
nic-private-ip-allocation = "Dynamic"

# Virtual Machine
vm-name = "vm"
vm-size = "Standard_F2"
vm-user = "burak"
vm-pass = "Multimedia96"
# OS Disk
vm-caching = "ReadWrite"
vm-strg-acc-type = "Standard_LRS"
# Source image reference
vm-publisher = "MicrosoftWindowsServer"
vm-offer = "WindowsServer"
vm-sku = "2016-Datacenter"
vm-vrsn = "latest"

# Resource Group 2
rg2-name = "rg2"
rg2-location = "Canada East"

# Storage account
stor-name = "burakstorage1"
stor-acc-tier = "Standard"
stor-replication-type = "LRS"
# Networking
stor-net-default-action = "Deny"
stor-net-ip-rules = ["99.228.245.140"]

# Storage container
container-name = "container1"
container-access-type = "private"

# Storage SAS Token
stor-sas-https-only = "true"
stor-sas-signed-version = "2017-07-29"
# Resource types
stor-sas-service = false
stor-sas-container = true
stor-sas-object = false
# Services
stor-sas-blob = true
stor-sas-queue = false
stor-sas-table = false
stor-sas-file = false
# Token Timer
stor-sas-start = "2023-11-02T00:00:00Z"
stor-sas-expiry = "2023-11-04T00:00:00Z"
# Permissions
stor-sas-read = true
stor-sas-write = true
stor-sas-delete = false
stor-sas-list = false
stor-sas-add = true
stor-sas-create = true
stor-sas-update = false
stor-sas-process = false
stor-sas-tag = false
stor-sas-filter = false

# Role Assignment
role-definition-name = "role-storage-blob-owner"

# File Share
file-share-name = "burak-file-share"
file-share-quota = "1"
file-share-id = "MTIzNDU2Nzg5MDEyMzQ1Njc4OTAxMjM0NTY3ODkwMTI"
file-share-permissions = "rwdl"
file-share-start = "2023-11-02T09:38:21.0000000Z"
file-share-expiry = "2023-12-02T09:38:21.0000000Z"


