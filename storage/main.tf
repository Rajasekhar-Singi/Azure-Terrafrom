resource "azurerm_resource_group" "example" {
  name     = "example-resources"
  location = "West Europe"
}

resource "random_id" "sa" {
  keepers = {
   resource_group = azurerm_resource_group.example.name
  }
  byte_length = 8
}
resource "azurerm_storage_account" "example" {
  name                     = "test${random_id.sa.hex}"
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags = {
    environment = "staging"
  }
}