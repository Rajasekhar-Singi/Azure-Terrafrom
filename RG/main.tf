resource "azurerm_resource_group" "rg" {
  name     = var.rgname
  location = var.location

  tags = {
    environment = "production"
    tier = "backend"
  }
}

resource "azurerm_public_ip" "rg" {
  name = "pip1"
  resource_group_name = azurerm_resource_group.rg.name
  location = azurerm_resource_group.rg.location
  //allocation_method = "static"
  allocation_method   = "Static"


  tags = {
    environment = "production"
    tier = "backend"
  }
}

resource "azurerm_public_ip" "rg1"{
  name="pip2"
  resource_group_name =azurerm_resource_group.rg.name
  location = azurerm_resource_group.rg.location
  allocation_method = "Dynamic"

  tags = {
    environmant ="staging"
  }
}

resource "azurerm_public_ip" "rg2" {
  name ="pip3"
  resource_group_name = azurerm_resource_group.rg.name
  location = azurerm_resource_group.rg.location
  allocation_method = "Static"
}

resource "azurerm_managed_disk" "rg" {
  name ="disk1"
  resource_group_name = azurerm_resource_group.rg.name
  location = "East US"
  storage_account_type ="Standard_LRS"
  create_option = "Empty"
  disk_size_gb ="1"

  tags ={
    environment = "staging"
    creation = "sample_practice"
  }
}

///////////////// vnet


resource "azurerm_virtual_network" "rg" {
  name                = "example-network"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  address_space       = ["10.0.0.0/16"]
  dns_servers         = ["10.0.0.4", "10.0.0.5"]

  subnet {
    name           = "subnet1"
    address_prefix = "10.0.1.0/24"
  }

  subnet {
    name           = "subnet2"
    address_prefix = "10.0.2.0/24"
  }

  tags = {
    environment = "Production"
  }
}