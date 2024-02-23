# Create Azure AD group in Azure active Directory for AKS admins

resource "azuread_group" "aks_administrators" {
  display_name     = "${azurerm_resource_group.aks_rg.name}-administrators"
  security_enabled = true
  description = "Azure AKS k8s administrators for ${azurerm_resource_group.aks_rg.name}-cluster"
}