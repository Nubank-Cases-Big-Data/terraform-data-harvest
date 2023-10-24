terraform {
  required_version = ">= 1.5.7"

  backend "s3" {}

  required_providers {
    confluent = {
      source  = "confluentinc/confluent"
      version = "1.54.0"
    }

    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.19.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"

  default_tags {
    tags = {
      Terraform   = "true"
      Project     = "terraform-data-harvest"
      Name        = "terraform-data-harvest"
      Owner       = "piper.alright"
      Environment = "${var.environment}"
    }
  }
}

provider "confluent" {
}
