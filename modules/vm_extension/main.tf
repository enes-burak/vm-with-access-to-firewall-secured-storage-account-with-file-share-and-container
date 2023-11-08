
resource "azurerm_virtual_machine_extension" "vm-extension" {
  name                 = var.name
  virtual_machine_id   = var.virtual_machine_id
  publisher            = var.publisher
  type                 = var.type
  type_handler_version = var.type_handler_version

  settings = var.settings
}
