terraform {
  required_version = ">=1.0"
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "~>3.0"
    }
    azuread = {
      source = "hashicorp/azuread"
      version = "~>2.0"
    }
    random = {
      source = "hashicorp/random"
      version = "~>3.0"
    }
  }


  backend "azurerm" {
  /*resource_group_name  = "acr-rg1"
    storage_account_name = "faksstoragerg"
    container_name       = "fstatefiles"
    key                  = "terraform_con_vnet.tfstate"*/
  }

}

provider "azurerm" { 
  #subscription_id = "112aa915-c453-40f0-a1cf-5f56612be3bd"
  #tenant_id = "6f21ecf1-4200-4eac-9bd4-a7198b407a91"
  skip_provider_registration = true
  features {
    virtual_machine {
      delete_os_disk_on_deletion = true
    }
    resource_group {
     prevent_deletion_if_contains_resources = false  
    }
  }
}

resource "random_pet" "aksrandom" {
  
  }

provider "azuread" {

}
