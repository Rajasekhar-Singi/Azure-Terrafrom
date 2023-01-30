locals {
prefix = "${var.environment}"
}

resource "azurerm_resource_group" "rg" {
name = var.rgname
location= var.loc
tags = var.tagging
}

resource "azurerm_managed_disk" "example" {
  name                 = "${local.prefix}-${var.disk1}"
  location             = azurerm_resource_group.rg.location
  resource_group_name  = azurerm_resource_group.rg.name
  storage_account_type = "Standard_LRS"
  create_option        = "Empty"
  disk_size_gb         = "1"

  tags = var.tagging
}

resource "azurerm_managed_disk" "example1" {
  name                 = "${local.prefix}-${var.disk2}"
  location             = azurerm_resource_group.rg.location
  resource_group_name  = azurerm_resource_group.rg.name
  storage_account_type = "Standard_LRS"
  create_option        = "Empty"
  disk_size_gb         = "1"

  tags = var.tagging
}

resource "azurerm_managed_disk" "example2" {
  name                 = "${local.prefix}-${var.disk3}"
  location             = azurerm_resource_group.rg.location
  resource_group_name  = azurerm_resource_group.rg.name
  storage_account_type = "Standard_LRS"
  create_option        = "Empty"
  disk_size_gb         = "1"

  tags = var.tagging
}

resource "azurerm_managed_disk" "example4" {
  name                 = "${local.prefix}-${var.disk4}"
  location             = azurerm_resource_group.rg.location
  resource_group_name  = azurerm_resource_group.rg.name
  storage_account_type = "Standard_LRS"
  create_option        = "Empty"
  disk_size_gb         = "1"

  tags = var.tagging
}