terraform {
  backend "s3" {
    bucket = "terraform-state-dev" # Will be created by module
    key    = "dev/terraform.tfstate"
    region = "us-east-1"
  }
}


