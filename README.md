# HCB Bank Terraform Project

## Project Overview

This project demonstrates the use of Terraform to manage and deploy infrastructure for a fictional bank, "HCB Bank," on AWS. The setup includes different environments—Dev, Stage, and Prod—each with its own configuration to show how infrastructure can be managed across multiple stages of deployment.

## Repository Structure

The repository is organized into the following structure:

![image](https://github.com/user-attachments/assets/636086e8-c660-4421-9d28-4e4be75776a8)



## Step 1: Terraform Backend Configuration

The `backend.tf` file in each environment folder configures the Terraform backend using an S3 bucket. This allows for centralized storage of the Terraform state file, ensuring that infrastructure changes are tracked and managed efficiently.

Example configuration:

```hcl
terraform {
  backend "s3" {
    bucket         = "t2s-bank-terraform-state"
    key            = "dev/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-locks"
  }
}
## Step 2: Initialize, Plan, and Apply the Terraform Configuration

### Environment: Dev
Navigate to the Dev environment directory:

```bash
cd t2s-bank/envs/dev

###Initialize Terraform:

```bash
terraform init

###Create an execution plan:

```bash
terraform plan

###Apply the configuration:

```bash
terraform apply

###Environment: Stage

###Navigate to the Stage environment directory:

```bash
cd t2s-bank/envs/stage

###Initialize Terraform:
```bash
terraform init

###Create an execution plan:
```bash
terraform plan

###Apply the configuration:
```bash
terraform apply

###Environment: Prod
Navigate to the Prod environment directory:

```bash
cd t2s-bank/envs/prod

###Initialize Terraform:
```bash
terraform init

###Create an execution plan:

```bash
terraform plan

###Apply the configuration:

```bash
terraform apply

##Step 3: Clean Up
When you no longer need the resources, you can destroy them to avoid unnecessary costs.

###For Each Environment
Respectively, navigate to the environment directory:
```bash
cd t2s-bank/envs/dev
```bash
cd t2s-bank/envs/stage
```bash
cd t2s-bank/envs/prod

Destroy the resources:
```bash
terraform destroy

###Key Points
This project showcases the use of Terraform to manage infrastructure across multiple environments.
The S3 backend configuration ensures that the Terraform state is stored securely and consistently.
The modular structure allows for reusability and better management of infrastructure as code.
