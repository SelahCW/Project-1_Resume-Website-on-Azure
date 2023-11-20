output "deployment_token" {
    value = azurerm_static_site.Selah_StaticSite.api_key
    sensitive = true
}