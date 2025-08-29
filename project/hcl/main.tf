resource "azurerm_resource_group" "rg-example" {
  name     = "rg-example"
  location = var.azRegion
}

resource "azurerm_storage_account" "mystorage" {
  count = 2
  name                     = "dlstestexample00${count.index}"
  resource_group_name      = azurerm_resource_group.rg-example.name
  location                 = azurerm_resource_group.rg-example.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    environment = "development"
  }
}