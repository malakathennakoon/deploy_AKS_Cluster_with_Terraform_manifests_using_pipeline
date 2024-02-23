# Azure location

variable "location" {
  description = "Azure Region where all these resources will be provisioned"
  default = "North Europe"
  type = string
}

# Azure resource group name

variable "resource_group_name" {
  description = "This variable defines the Resource Group"
  default = "terraform-aks"
  type = string
}

# Azure AKS environment Name

variable "environment" {
  description = "This variable defines the Environment"
  type = string
  #default = "dev"
}

# SSH public key for linux VMs

variable "ssh_public_key" {
  #default = "/mnt/c/Users/malaka/devops/azure_aks_tf/.ssh/aks-prod-sshkeys-terraform/aksprodsshkey.pub"
  description = "This variable defines the SSH key for Linux k8s worker nodes"
}

# Windows admin username for k8s worker nodes

variable "windows_admin_user" {
  type = string
  default = "azureuser"
  description = "This variable defines the Windows admin username k8s Worker nodes"
}

# Windows admin user password for k8s worker nodes

variable "windows_admin_password" {
  type = string
  default = "StackSimplify@102"
  description = "This variable defines the Windows admin password k8s Worker nodes" 
}