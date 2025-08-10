module "s3_backend" {
  source      = "git::https://github.com/sivaganga9786/Terraform-foundation.git//terraform-resources/S3"
  bucket_name = "terraform-state-dev-ecom"
  environment = "dev"
  tags = {
    Project = "terraform-Ecom"
  }
}