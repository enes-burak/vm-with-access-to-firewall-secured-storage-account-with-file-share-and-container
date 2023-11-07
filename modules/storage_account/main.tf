resource "azurerm_storage_account" "storage-acc" {
  name                     = var.name
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type
  network_rules {
    default_action             = var.default_action
    ip_rules                   = var.ip_rules
  }
}