terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=2.46.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
  skip_provider_registration = "true"
}

 # Create the resource group
resource "azurerm_resource_group" "rg" {
  name     = "rg-app-config-westus2"
  location = "westus2"
}
 
 # Create the app configuration
resource "azurerm_app_configuration" "appconf" {
  name                = "app-config-westus2"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  sku = "free"
}