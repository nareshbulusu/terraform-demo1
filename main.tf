module "resource_group" {
  source                    = "app.terraform.io/narulu/resource_group/azurerm"
  version                   = "0.1.7"
  
  resource_group_name       = var.resource_group_name
  azure_region              = var.azure_region
  tags                      = var.tags
}

  
module "storage_account" {
  source                    = "app.terraform.io/narulu/storage_account/azurerm"
  version                   = "0.1.1"

  storageaccountname        = var.storageaccountname
  resource_group_name       = module.resource_group.resource_group_name
  location                  = module.resource_group.resource_group_location
  account_tier              = var.account_tier
  account_replication_type  = var.account_replication_type
  tags                      = var.tags
}
