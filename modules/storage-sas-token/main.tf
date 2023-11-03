data "azurerm_storage_account_sas" "storage-sas" {
  connection_string = var.connection_string
  https_only        = var.https_only
  signed_version    = var.signed_version

  resource_types {
    service   = var.service
    container = var.container
    object    = var.object
  }

  services {
    blob  = var.blob
    queue = var.queue
    table = var.table
    file  = var.file
  }

  start  = var.start
  expiry = var.expiry

  permissions {
    read    = var.read
    write   = var.write
    delete  = var.delete
    list    = var.list
    add     = var.add
    create  = var.create
    update  = var.update
    process = var.process
    tag     = var.tag
    filter  = var.filter
  }
}
