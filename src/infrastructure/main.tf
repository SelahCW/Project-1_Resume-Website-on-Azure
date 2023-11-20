resource "azurerm_resource_group" "rg" {
    name     = "rg-${local.name}-dev-${local.location}"
    location = local.location
    tags     = local.common_tags
}

resource "azurerm_static_site" "Selah_StaticSite" {
  name                = "web-${local.name}-dev-${local.location}"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  sku_size = "Free"
  sku_tier = "Free"
  tags                = local.common_tags
}