# Terraform Confluent Data Ingestion Setup

This repository focuses on orchestrating the setup of Confluent data ingestion configurations using Terraform. It ensures smooth management, maintenance, and scalability of your Confluent environments and Kafka clusters.

## Primary Objectives

1. **Confluent Environment**: Define the environment where your Kafka clusters and other Confluent resources will reside. The lifecycle configuration ensures that this resource is preserved, preventing accidental deletion.
2. **Confluent Kafka Cluster**: Create and manage Kafka clusters, ensuring they are correctly associated with the designated environment. Various attributes like availability, cloud, and region are configurable.

## Setting Up Confluent Data Ingestion

Proper setup is crucial to ensure optimal data flow and resource management. The following steps guide you through the process of initializing your Confluent configurations using Terraform.

### Prerequisites

#### Installing AWS Vault (if using AWS resources)

Follow the instructions on the [AWS Vault GitHub page](https://github.com/99designs/aws-vault).

#### Installing TFEnv

To manage multiple Terraform versions, you can use TFEnv. Installation instructions are available on the [TFEnv GitHub page](https://github.com/tfutils/tfenv).

### Configuring AWS Vault (if using AWS resources)

If you're integrating with AWS resources, configure AWS Vault by editing the AWS configuration file, typically located at `~/.aws/config`:

```plaintext
[profile <environment-name>]
sso_start_url = <your-sso-url>
sso_region = <your-region>
sso_account_id = <your-account-id>
sso_role_name = <your-role-name>
region = <your-region>
output = json
```

*Note: Replace the placeholders (< >) with appropriate values.*

Authenticate to your AWS account:

```bash
aws-vault login <environment-name>
```

### 1. Initializing Terraform

Navigate to the directory containing your Terraform files and initialize:

```bash
cd terraform
terraform init
```

### 2. Planning and Applying Changes

Review the proposed changes and apply them:

```bash
terraform plan -var-file=<environment-name>/variables.tfvars
terraform apply -var-file=<environment-name>/variables.tfvars -auto-approve
cd ..
```

### 3. Exploring Created Resources

This setup will create a designated Confluent environment and an associated Kafka cluster. You can expand upon this foundation by adding more Confluent resources and configurations.

### 4. Iterating for Other Environments

If you need to set up configurations for a different environment:

1. Authenticate to your AWS account (if using AWS resources):

```bash
aws-vault login <other-environment-name>
```

2. Clean local temporary Terraform files:

```bash
rm -rf .terraform .terraform.lock.hcl terraform.tfstate terraform.tfstate.backup
```

3. Repeat steps 1 and 2, substituting the environment name accordingly.

### 5. Setting Up GitHub Secrets

If you are integrating with CI/CD workflows, make sure to configure GitHub Secrets for required credentials:

- `AWS_ACCESS_KEY_ID`
- `AWS_SECRET_ACCESS_KEY`
- `CONFLUENT_CLOUD_API_KEY`
- `CONFLUENT_CLOUD_API_SECRET`

Note:

Retrieve these credentials from the Confluent Platform or any other secrets management service you're using. Ensure that you configure these secrets in your GitHub repository before pushing any updates.
