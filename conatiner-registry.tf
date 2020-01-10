
resource "azurerm_container_registry" "acr" {
  name                = "${var.prefix}registry"
  resource_group_name =  var.location 
  location            =  var.Rg_Name
  sku                 = "Standard"
  admin_enabled       = true 
 # georeplication_locations = ["East US", "West Europe"]
}
