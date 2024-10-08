# HCB Bank Terraform Project

## Project Overview

This project demonstrates the use of Terraform to manage and deploy infrastructure for a fictional bank, "HCB Bank," on AWS. The setup includes different environments—Dev, Stage, and Prod—each with its own configuration to show how infrastructure can be managed across multiple stages of deployment.

## Repository Structure

The repository is organized into the following structure:

![image](https://github.com/user-attachments/assets/242462c8-b76f-47be-9a6b-a9f21929a329)




## Step 1: Terraform Backend Configuration

The `backend.tf` file in each environment folder configures the Terraform backend using an S3 bucket. This allows for centralized storage of the Terraform state file, ensuring that infrastructure changes are tracked and managed efficiently.

Example configuration:

```hcl
terraform {
  backend "s3" {
    bucket = "hcb-bank-terraform-state"
    key    = "global/s3/terraform.tfstate"
    region = "us-east-1"
  }
}
```  

## Step 2: Initialize, Plan, and Apply the Terraform Configuration

### Environment: Dev
Navigate to the Dev environment directory:
```bash
cd Banking_Project_Terraform/Envs/dev
```
### Initialize Terraform:
```bash
terraform init
```
### Create an execution plan:

```bash
terraform plan
```
### Apply the configuration:

```bash
terraform apply
```
### Environment: Stage

### Navigate to the Stage environment directory:

```bash
cd Banking_Project_Terraform/Envs/stage
```
### Initialize Terraform:
```bash
terraform init
```
### Create an execution plan:
```bash
terraform plan
```
### Apply the configuration:
```bash
terraform apply
```
### Environment: Prod
Navigate to the Prod environment directory:

```bash
cd Banking_Project_Terraform/Envs/prod
```
### Initialize Terraform:
```bash
terraform init
```
### Create an execution plan:

```bash
terraform plan
```

### Apply the configuration:
```bash
terraform apply
```
## Step 3: Clean Up
When you no longer need the resources, you can destroy them to avoid unnecessary costs.

### For Each Environment
Respectively, navigate to the environment directory:
```bash
cd Banking_Project_Terraform/Envs/dev
```
```bash
cd Banking_Project_Terraform/Envs/stage
```
```bash
cd Banking_Project_Terraform/Envs/prod
```
Destroy the resources:
```bash
terraform destroy
```
### key Points
1. This project showcases the use of Terraform to manage infrastructure across multiple environments.
2. The S3 backend configuration ensures that the Terraform state is stored securely and consistently.
3. The modular structure allows for reusability and better management of infrastructure as code.
