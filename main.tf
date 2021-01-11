module "resource_group" {
  source  = "app.terraform.io/narulu/resource_group/azurerm"
  version = "0.1.6"
  
  resource_group_name = var.resource_group_name
  azure_region = var.azure_region
  tags = var.tags
}
