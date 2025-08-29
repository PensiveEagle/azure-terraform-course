resource "azurerm_network_security_group" "nsg" {
    name = "nsg_example"
    location = azurerm_resource_group.rg-example.location
    resource_group_name = azurerm_resource_group.rg-example.name

    security_rule {
        name = "rule1"
        priority = 100
        direction = "Inbound"
        access = "Allow"
        protocol = "Tcp"
        source_port_range = "*"
        destination_port_range = "80"
        source_address_prefix = "*"
        destination_address_prefix = "*"
    }

    security_rule {
        name = "rule2"
        priority = 101
        direction = "Inbound"
        access = "Allow"
        protocol = "Tcp"
        source_port_range = "*"
        destination_port_range = "443"
        source_address_prefix = "*"
        destination_address_prefix = "*"
    }
}