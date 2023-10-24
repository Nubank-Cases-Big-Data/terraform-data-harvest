resource "confluent_environment" "environment" {
  display_name = var.environment_display_name

  lifecycle {
    prevent_destroy = true
  }
}

resource "confluent_kafka_cluster" "basic_cluster" {
  display_name = var.kafka_cluster_display_name
  availability = var.kafka_cluster_availability
  cloud        = var.kafka_cluster_cloud
  region       = var.kafka_cluster_region

  basic {}

  environment {
    id = confluent_environment.environment.id
  }

  lifecycle {
    prevent_destroy = true
  }
}

resource "confluent_schema_registry_cluster" "essentials" {
  package = data.confluent_schema_registry_region.schema_registry_region.package

  environment {
    id = confluent_environment.environment.id
  }

  region {
    id = data.confluent_schema_registry_region.schema_registry_region.id
  }

  lifecycle {
    prevent_destroy = true
  }
}
