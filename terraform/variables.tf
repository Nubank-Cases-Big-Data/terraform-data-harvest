variable "environment" {
  description = "Specify the deployment environment. This variable allows you to choose the environment where you want to deploy the infrastructure, which can be useful for managing multiple environments such as development, testing, and production"
  type        = string
  default     = "prd"
}

variable "kafka_cluster_display_name" {
  description = "The display name for the Kafka cluster."
  default     = "basic_kafka_cluster"
}

variable "kafka_cluster_availability" {
  description = "Availability setting for Kafka cluster."
  default     = "SINGLE_ZONE"
}

variable "kafka_cluster_cloud" {
  description = "Cloud provider for Kafka cluster."
  default     = "AWS"
}

variable "kafka_cluster_region" {
  description = "Region for the Kafka cluster."
  default     = "us-east-1"
}

variable "environment_display_name" {
  description = "The display name for the Confluent environment."
  default     = "prd"
}

variable "cloud_provider" {
  description = "The cloud provider for the schema registry."
  default     = "AWS"
}

variable "deployment_region" {
  description = "The region for the schema registry deployment."
  default     = "us-east-2"
}

variable "package_type" {
  description = "The package type for the schema registry."
  default     = "ESSENTIALS"
}
