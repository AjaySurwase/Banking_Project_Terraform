terraform {
  backend "s3" {
    bucket = "hcb-bank-terraform-state"
    key    = "stage/terraform.tfstate"
    region = "us-east-1"
  }
}
