terraform {
  backend "s3" {
    bucket = "t2s-bank-terraform-state"
    key    = "stage/terraform.tfstate"
    region = "us-east-1"
  }
}
