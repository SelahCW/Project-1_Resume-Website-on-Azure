output "deployment_token" {
    description = "The deployment token for the static site used by the Azure Static Web App"
    value = azurerm_static_site.Selah_StaticSite.api_key
    sensitive = true
}