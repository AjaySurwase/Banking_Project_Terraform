terraform {
  backend "s3" {
    bucket = "hcb-bank-terraform-state"
    key    = "global/s3/terraform.tfstate"
    region = "us-east-1"
  }
}
