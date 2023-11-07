output "name" {
  value = azurerm_storage_account.storage-acc.name
}
output "connection_string" {
  value = azurerm_storage_account.storage-acc.primary_connection_string
}

output "key" {
  value = azurerm_storage_account.storage-acc.primary_access_key
}