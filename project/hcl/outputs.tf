output "primarykey" {
  value     = values(azurerm_storage_account.mystorage)[0].primary_access_key
  sensitive = true
}

output "host" {
  value = values(azurerm_storage_account.mystorage)[1].primary_blob_host
}