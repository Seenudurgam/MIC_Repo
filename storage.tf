## Manages an Azure Storage Account.
## https://www.terraform.io/docs/providers/azurerm/r/storage_account.html 

resource "azurerm_storage_account" "testsa" {
  name                     = var.StorageName
  resource_group_name      = var.resource_group_name
  location                 = var.resource_group_location
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags {
    environment = "test"
  }
}