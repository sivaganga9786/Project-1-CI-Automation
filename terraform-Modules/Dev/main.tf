module "s3_backend" {
  source      = "git::https://github.com/sivaganga9786/Terraform-foundation.git//s3-backend"
  bucket_name = "terraform-state-dev"
  environment = "dev"
  tags = {
    Project = "terraform-Ecom"
  }
}