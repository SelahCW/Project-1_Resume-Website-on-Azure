resource "azurerm_resource_group" "Selah_StaticSiteRG" {
    name = var.RG_name #?
    location = var.RG_location #?
}

resource "azurerm_static_site" "Selah_StaticSite" {
  name                = local.static_site_name
  resource_group_name = azurerm_resource_group.Selah_StaticSiteRG.name
  location            = azurerm_resource_group.Selah_StaticSiteRG.location
}

resource "azurerm_dns_cname_record" "DNS_CNAME_StaticSite" {
  name                = local.homepage
  zone_name           = local.zone_name
  resource_group_name = azurerm_resource_group.Selah_StaticSiteRG.name
  ttl                 = 300
  record              = azurerm_static_site.Selah_StaticSite.default_host_name #?
}

resource "azurerm_static_site_custom_domain" "CustomDomain_StaticSite" {
  static_site_id  = azurerm_static_site.Selah_StaticSite.id
  domain_name     = "${azurerm_dns_cname_record.DNS_CNAME_StaticSite.name}.${azurerm_dns_cname_record.DNS_CNAME_StaticSite.zone_name}"
  validation_type = "cname-delegation" #?
}