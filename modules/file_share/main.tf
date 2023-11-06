
resource "azurerm_storage_share" "file-share" {
  name                 = var.name
  storage_account_name = var.storage_account_name
  quota                = var.quota

  acl {
    id = var.id

    access_policy {
      permissions = var.permissions
      start       = var.start
      expiry      = var.expiry
    }
  }
}