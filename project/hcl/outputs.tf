output "primarykey" {
    value = azurerm_storage_account.mystorage[0].primary_access_key
    sensitive = true
}

output "host" {
    value = azurerm_storage_account.mystorage[1].primary_blob_host
}