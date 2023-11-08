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

# Public IP
variable "public-ip-name" {
  type = string
}
variable "public-ip-allocation-method" {
  type = string
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

# # VM Extension
variable "vm-ext-name" {
  type = string
}
variable "vm-ext-publisher" {
  type = string
}
variable "vm-ext-type" {
  type = string
}
variable "vm-ext-type-handler-version" {
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
variable "stor-net-default-action" {
  type = string
}
variable "stor-net-ip-rules" {
  type = list(string)
}

# Storage container
variable "container-name" {
  type = string
}
variable "container-access-type" {
  type = string
}

# Storage SAS Token
variable "stor-sas-https-only" {
  type = bool
}
variable "stor-sas-signed-version" {
  type = string
}
# Resource Types
variable "stor-sas-service" {
  type = bool
}
variable "stor-sas-container" {
  type = bool
}
variable "stor-sas-object" {
  type = bool
}
# Services
variable "stor-sas-blob" {
  type = bool
}
variable "stor-sas-queue" {
  type = bool
}
variable "stor-sas-table" {
  type = bool
}
variable "stor-sas-file" {
  type = bool
}
# SAS Token Validity Period
variable "stor-sas-start" {
  type = string
}
variable "stor-sas-expiry" {
  type = string
}
# Permissions
variable "stor-sas-read" {
  type = bool
}
variable "stor-sas-write" {
  type = bool
}
variable "stor-sas-delete" {
  type = bool
}
variable "stor-sas-list" {
  type = bool
}
variable "stor-sas-add" {
  type = bool
}
variable "stor-sas-create" {
  type = bool
}
variable "stor-sas-update" {
  type = bool
}
variable "stor-sas-process" {
  type = bool
}
variable "stor-sas-tag" {
  type = bool
}
variable "stor-sas-filter" {
  type = bool
}

# Role Assignment
variable "role-definition-name" {
  type = string
}

# File Share
variable "file-share-name" {
  type = string
}
variable "file-share-quota" {
  type = string
}
variable "file-share-id" {
  type = string
}
variable "file-share-permissions" {
  type = string
}
variable "file-share-start" {
  type = string
}
variable "file-share-expiry" {
  type = string
}

# File Upload to Share
variable "file-upload-name" {
  type = string
}
variable "file-upload-source" {
  type = string
}

# Blob Upload to Container
variable "blob-upload-name" {
  type = string
}
variable "blob-upload-type" {
  type = string
}
variable "blob-upload-source" {
  type = string
}
