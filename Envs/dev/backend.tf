terraform {
  backend "s3" {
    bucket = "hcb-bank-terraform-state"
    key    = "dev/terraform.tfstate"
    region = "us-east-1"
  }
}
