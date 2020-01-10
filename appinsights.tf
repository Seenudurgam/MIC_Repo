## Manage 

## https://github.com/terraform-providers/terraform-provider-azurerm/blob/master/website/docs/r/application_insights.html.markdown

resource "azurerm_application_insights" "testappinsights" {
  name                = var.appinsight
  location            = var.location
  resource_group_name = var.Rg_Name
  application_type    = "web"
}

output "instrumentation_key" {
  value = "${azurerm_application_insights.testappinsights.instrumentation_key}"
}

output "app_id" {
  value = "${azurerm_application_insights.testappinsights.app_id}"
}

/* 

id - The ID of the Application Insights component.

app_id - The App ID associated with this Application Insights component.

instrumentation_key - The Instrumentation Key for this Application Insights component.

*/