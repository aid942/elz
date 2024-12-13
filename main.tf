module "enterprise_scale" {
  source  = "Azure/caf-enterprise-scale/azurerm"
  version = "6.1.0" # change this to your desired version, https://www.terraform.io/language/expressions/version-constraints

  default_location = var.default_location

  providers = {
    azurerm              = azurerm
    azurerm.connectivity = azurerm
    azurerm.management   = azurerm
  }

  root_parent_id = data.azurerm_client_config.core.tenant_id
  root_id        = var.root_id
  root_name      = var.root_name

  library_path = "${path.root}/lib"

  custom_landing_zones = local.custom_landing_zones

  deploy_core_landing_zones   = var.deploy_core_landing_zones
  deploy_corp_landing_zones   = var.deploy_corp_landing_zones
  deploy_demo_landing_zones   = var.deploy_demo_landing_zones
  deploy_online_landing_zones = var.deploy_online_landing_zones
  deploy_sap_landing_zones    = var.deploy_sap_landing_zones
  deploy_diagnostics_for_mg   = var.deploy_diagnostics_for_mg


  configure_connectivity_resources = local.configure_connectivity_resources
  deploy_connectivity_resources    = var.deploy_connectivity_resources
  subscription_id_connectivity     = var.subscription_id_connectivity

  configure_management_resources = local.configure_management_resources
  deploy_management_resources    = var.deploy_management_resources
  subscription_id_management     = var.subscription_id_management

  configure_identity_resources = local.configure_identity_resources
  deploy_identity_resources    = var.deploy_identity_resources
  subscription_id_identity     = var.subscription_id_identity

}