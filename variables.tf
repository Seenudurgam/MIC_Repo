variable "resource_group_name" {
  type        = "string"
  description = "Name of the azure resource group."
  default = "mic_rg"
}

variable "resource_group_location" {
  type        = "string"
  description = "Location of the azure resource group."
  default = "westeurope"
}

variable "subscription_id" {
  type        = "string"
  description = "subscription ID."
  default = "9657d952-ba4f-4588-8ada-bf25a4524929"
}

variable "client_id" {
  type        = "string"
  description = "client ID"
  default = "a044fb05-dff5-4101-a571-3082d2bb761f"
}

variable "client_secret" {
  type        = "string"
  description = "client secret"
  default = "lWbltKXG_8e.9baX-sKnT1r4GvCK/atJ"
}

variable "tenant_id" {
  type        = "string"
  description = "tenant id"
  default = "ac67e308-1f19-4011-9baa-c4df0351e262"
}

variable "object_id" {
  type        = "string"
  description = "object id"
  default = "1c584611-915e-4307-a62a-36f4ff1828fd"
}

variable "appinsight" {
  type        = "string"
  description = "application insight name "
  default = "testappinsight"
}

variable "StorageName" {
  type        = "string"
  description = "StorageName name "
  default = "test storageac"
}

variable "sqlserver" {
  type        = "string"
  description = "azurerm sql server name "
  default = "testsqlserver"
}

variable "prefix" {
  type        = "string"
  description = "db"
  default = "Test"
}

variable "MICKV" {
  type        = "string"
  description = "Key Vault name"
  default = "MICKV"
}







