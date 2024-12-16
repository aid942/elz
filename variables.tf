#General Variables

variable "ARM_CLIENT_ID" {}

variable "ARM_CLIENT_SECRET" {}

variable "ARM_TENANT_ID" {}

variable "ARM_SUBSCRIPTION_ID" {}
variable "root_id" {
  type    = string
  default = "es"
}

variable "root_name" {
  type    = string
  default = "Enterprise-Scale"
}

variable "default_location" {
  type = string
}

variable "deploy_corp_landing_zones" {
  type = bool
}

variable "deploy_core_landing_zones" {
  type = bool
}

variable "deploy_demo_landing_zones" {
  type = bool
}

variable "deploy_online_landing_zones" {
  type = bool
}

variable "deploy_sap_landing_zones" {
  type = bool
}

variable "deploy_diagnostics_for_mg" {
  type    = bool
  default = false
}

variable "apps_prefix" {
  type = string
}

#Connectivty Variables
variable "connectivity_resources_location" {
  type = string
}

variable "connectivity_resources_tags" {
  type = map(string)
}

variable "deploy_connectivity_resources" {
  type = bool
}

variable "subscription_id_connectivity" {
  type = string
}

#Management Variables
variable "log_retention_in_days" {
  type = number
}

variable "security_alerts_email_address" {
  type = string
}

variable "management_resources_location" {
  type = string
}

variable "management_resources_tags" {
  type = map(string)
}

variable "deploy_management_resources" {
  type = bool
}

variable "subscription_id_management" {
  type = string
}

#Identity Variables
variable "deploy_identity_resources" {
  type = bool
}

variable "subscription_id_identity" {
  type = string
}