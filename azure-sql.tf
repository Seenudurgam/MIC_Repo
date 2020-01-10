
resource "azurerm_sql_server" "sqlserver" {
  name                         = var.sqlserver
  resource_group_name          = var.Rg_Name
  location                     = var.location
  version                      = "12.0"
  administrator_login          = "4dm1n157r470r"
  administrator_login_password = "4-v3ry-53cr37-p455w0rd"
}

resource "azurerm_sql_database" "sqlserverdb" {
  name                             = "${var.prefix}-db"
  resource_group_name              =  var.Rg_Name 
  location                         =  var.location
  server_name                      = "${azurerm_sql_server.sqlserver.name}"
  edition                          = "Basic"
  collation                        = "SQL_Latin1_General_CP1_CI_AS"
  create_mode                      = "Default"
  requested_service_objective_name = "Basic"
}

# Enables the "Allow Access to Azure services" box as described in the API docs
# https://docs.microsoft.com/en-us/rest/api/sql/firewallrules/createorupdate

resource "azurerm_sql_firewall_rule" "sqlfirewell" {
  name                = "allow-azure-services"
  resource_group_name =  var.Rg_Name
  server_name         = "${azurerm_sql_server.sqlserver.name}"
  start_ip_address    = "0.0.0.0"
  end_ip_address      = "0.0.0.0"
}