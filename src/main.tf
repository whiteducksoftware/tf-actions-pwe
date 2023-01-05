# define locals which will not change accross environments
locals {
  # project prefix
  prefix = "actions"
  # Common tags to be assigned to all resources
  common_tags = {
    env        = var.stage
    managedBy  = data.azurerm_client_config.current.client_id
    project    = "demo"
  }
}

################################
####### Resource Groups ########
################################

# Create Core Resource Group
resource "azurerm_resource_group" "rg_core" {
  name     = "rg-${var.stage}-${local.prefix}-core"
  location = var.location
  tags     = local.common_tags
}
