data "confluent_schema_registry_region" "schema_registry_region" {
  cloud   = var.cloud_provider
  region  = var.deployment_region
  package = var.package_type
}
