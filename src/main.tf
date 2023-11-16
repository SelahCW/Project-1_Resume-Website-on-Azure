resource "azurerm_resource_group" "rg" {
    name     = "rg-${local.name}-dev-${local.location}"
    location = local.location
    tags     = local.common_tags
}

/*
resource "azurerm_static_site" "Selah_StaticSite" {
  name                = "web-${local.name}-dev-${local.location}"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  tags                = local.common_tags
}
*/

resource "azurerm_storage_account" "web_storage_account" {
  name = "selahsresume"
  resource_group_name = azurerm_resource_group.rg.name
  location = azurerm_resource_group.rg.location
  account_tier = "Standard"
  account_replication_type = "LRS"
  account_kind = "StorageV2"
  static_website {
    index_document = "index.html"
    error_404_document = "error404.html"
  }
  tags = local.common_tags
}

/*
resource "azurerm_storage_container" "web_storage_container" {
  name = "$web"
  storage_account_name = azurerm_storage_account.web_storage_account.name
  container_access_type = "private"
}
*/

resource "azurerm_storage_blob" "indexHTML" {
  name = "index.html"
  storage_account_name = azurerm_storage_account.web_storage_account.name
  storage_container_name = "$web"
  type = "Block"
  content_type = "text/html"
  source = "index.html"
}

resource "azurerm_storage_blob" "styleCSS" {
  name = "style.css"
  storage_account_name = azurerm_storage_account.web_storage_account.name
  storage_container_name = "$web"
  type = "Block"
  content_type = "text/css"
  source = "style.css"
}

resource "azurerm_storage_blob" "error404HTML" {
  name = "error404.html"
  storage_account_name = azurerm_storage_account.web_storage_account.name
  storage_container_name = "$web"
  type = "Block"
  content_type = "text/html"
  source = "error404.html"
}

resource "azurerm_storage_blob" "style404CSS" {
  name = "style404.css"
  storage_account_name = azurerm_storage_account.web_storage_account.name
  storage_container_name = "$web"
  type = "Block"
  content_type = "text/css"
  source = "style404.css"
}

resource "azurerm_storage_blob" "profile_picture" {
  name = "selah.jpg"
  storage_account_name = azurerm_storage_account.web_storage_account.name
  storage_container_name = "$web"
  type = "Block"
  content_type = "image/jpg"
  source = "selah.jpg"
}