terraform {
  backend "s3" {
    bucket = "hcb-bank-terraform-state18"
    key    = "stage/terraform.tfstate"
    region = "us-east-1"
  }
}
