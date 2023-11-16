# Azure provider version 

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "= 3.21.1"
    }
  }
}

provider "azurerm" {
  features {}
}

### Create Resource group 
resource "azurerm_resource_group" "sc_corp_rg" {
  name     = var.resource_group_name
  location = var.resource_group_location
}

### Create Spring Cloud Service
resource "azurerm_spring_cloud_service" "sc" {
  name                = var.sc_service_name
  resource_group_name = var.resource_group_name
  location            = var.resource_group_location
  sku_name            = "S0"


  timeouts {
    create = "60m"
    delete = "2h"
  }

  depends_on = [azurerm_resource_group.sc_corp_rg]
  tags = {
    Env = "develop"
  }

}

