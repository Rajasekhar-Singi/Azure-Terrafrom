output "rgname" {
    value = azurerm_resource_group.rg.name
}
output "location" {
    value = azurerm_resource_group.rg.location
}
output "tags" {
    value = azurerm_resource_group.rg.tags
}
output "managed_disk1" {
    value = azurerm_managed_disk.disk1.name
}
output "managed_disk2" {
    value = azurerm_managed_disk.disk2.name
}
output "managed_disk3" {
    value = azurerm_managed_disk.disk3.name
}
output "managed_disk4" {
    value = azurerm_managed_disk.disk4.name
}