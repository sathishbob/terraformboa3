terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.10.0"
    }
    random = {
      source = "hashicorp/random"
      version = "3.6.3"
    }
    null = {
      source = "hashicorp/null"
      version = "3.2.3"
    }
    ansible = {
      source = "ansible/ansible"
      version = "1.3.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "terraformstate"
    storage_account_name = "sathishtfstate2111"
    container_name       = "tfstate"
    key                  = "state.tfstate"
  }
}

provider "azurerm" {
  features{}
}

