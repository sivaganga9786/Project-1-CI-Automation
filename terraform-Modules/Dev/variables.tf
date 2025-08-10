variable "region" {
  default = "us-east-1"
}
variable "access_key" {
  default = "us-east-1"
}
variable "secret_key" {
  default = "us-east-1"
}
variable "key_name" {
  description = "Name of the SSH key pair to use for EC2 instances"
  type        = string
  default     = "terraform_keypai" # Replace with your actual key pair name
}