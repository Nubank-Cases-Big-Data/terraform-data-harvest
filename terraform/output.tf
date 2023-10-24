output "schema_registry_cluster_id" {
  description = "The ID of the Schema Registry cluster."
  value       = confluent_schema_registry_cluster.essentials.id
}

output "schema_registry_api_version" {
  description = "An API Version of the schema version of the Schema Registry cluster."
  value       = confluent_schema_registry_cluster.essentials.api_version
}

output "schema_registry_kind" {
  description = "A kind of the Schema Registry cluster."
  value       = confluent_schema_registry_cluster.essentials.kind
}

output "schema_registry_rest_endpoint" {
  description = "The HTTP endpoint of the Schema Registry cluster."
  value       = confluent_schema_registry_cluster.essentials.rest_endpoint
}

output "schema_registry_display_name" {
  description = "The name of the Schema Registry cluster."
  value       = confluent_schema_registry_cluster.essentials.display_name
}

output "schema_registry_resource_name" {
  description = "The Confluent Resource Name of the Schema Registry cluster."
  value       = confluent_schema_registry_cluster.essentials.resource_name
}
