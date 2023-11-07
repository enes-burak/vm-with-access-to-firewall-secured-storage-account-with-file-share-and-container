resource "azurerm_storage_share_file" "file-share-upload" {
  name             = var.name
  storage_share_id = var.storage_share_id
  source           = var.file_source
}