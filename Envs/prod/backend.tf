terraform {
  backend "s3" {
    bucket = "hcb-bank-terraform-state"
    key    = "prod/terraform.tfstate"
    region = "us-east-1"
  }
}
