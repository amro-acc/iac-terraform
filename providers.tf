terraform {
  required_version = ">=0.12"
  
  backend "azurerm" {
    resource_group_name   = "jenkins-rg"
    storage_account_name  = "jenkinstg"
    container_name        = "jenkins-cont"
    key                   = "terraform.tfstate"
  }
  
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>2.0"
    }
    azuread = {
      source = "hashicorp/azuread"
      version = "=0.6.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "~>3.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id   = "fb489ac2-f3a0-47da-9d84-977c7f38e1ce"
  tenant_id         = "3c09fd31-93dc-4214-815a-42ccd753f941"
  client_id         = "0fc8cebe-89a5-41df-9f92-3d184ac2839d"
  client_secret     = "tBN8Q~tCDPVukXcwO-_JIzK97X55G5E0eNlWYa-v"
}
provider "azuread" {
  # Configuration options
}
