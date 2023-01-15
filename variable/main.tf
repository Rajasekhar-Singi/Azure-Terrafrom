resource "azurerm_resource_group" "example" {
  name     = var.rgname
  location = var.loc
}

resource "azurerm_managed_disk" "example" {
  name                 = var.diskname
  location             = azurerm_resource_group.example.location
  resource_group_name  = azurerm_resource_group.example.name
  storage_account_type = var.satype
  create_option        = "Empty"
  disk_size_gb         = var.disksize

  tags = {
    environment = "staging"
  }
}