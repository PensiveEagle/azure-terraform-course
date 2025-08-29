data "azurerm_resource_group" "rg_example" {
  name = "rg-example"
}

resource "azurerm_storage_account" "dlstestexamlpe001" {
  name                     = "dlstestexample001"
  resource_group_name      = data.azurerm_resource_group.rg_example.name
  location                 = data.azurerm_resource_group.rg_example.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    environment = "development"
  }
}