
# Define resource group information

resource "azurerm_resource_group" "aks_rg" {
  name     = "${var.resource_group_name}-${var.environment}"
  location = var.location
}