output "primary_web_endpoint" {
  description = "The primary web endpoint for the static website of the storage account"
  value       = azurerm_storage_account.web_storage_account.primary_web_endpoint
}