module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = "my-vpc"
  cidr = "10.2.1.0/24"

#  azs             = ["eu-west-1a", "eu-west-1b", "eu-west-1c"]
  azs             = ["us-east-1a"]
  private_subnets = ["10.2.1.0/28", "10.2.1.16/28"]
  public_subnets  = ["10.2.1.128/28"]

  enable_nat_gateway = true
  enable_vpn_gateway = true

  tags = {
    Terraform = "true"
    Environment = "dev"
  }
}
