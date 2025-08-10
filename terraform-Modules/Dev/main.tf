module "vpc" {
  source          = "git::https://github.com/sivaganga9786/Terraform-foundation.git//terraform-resources/VPC"
  cidr_block      = "10.0.0.0/16"
  public_subnets  = ["10.0.1.0/24", "10.0.2.0/24"]
  private_subnets = ["10.0.3.0/24", "10.0.4.0/24"]
  azs             = ["us-east-1a", "us-east-1b"]
  environment     = "dev"
  tags = {
    Project = "ecom"
  }
}

module "ec2" {
  source        = "git::https://github.com/sivaganga9786/Terraform-foundation.git//terraform-resources/EC2"
  name_prefix   = "ecom-dev"
  instance_name = "ecom-dev-runner"
  ami           = "ami-084568db4383264d4" # choose correct region AMI with SSM support
  instance_type = "t3.micro"
  vpc_id        = module.vpc.vpc_id
  subnet_id     = module.vpc.private_subnet_ids[0] # place in private subnet
  tags = {
    Project = "ecom"
    Env     = "dev"
  }
}
