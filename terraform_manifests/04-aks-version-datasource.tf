data "azurerm_kubernetes_service_versions" "current" {
  location = "North Europe"
  include_preview = false
}