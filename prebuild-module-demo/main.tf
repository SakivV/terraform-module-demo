module "vpc" {
  source = "terraform-aws-modules/vpc/aws"
  name = "dev-vpc"
  cidr = "10.81.0.0/16"
  azs             = ["us-east-1a", "us-east-1b", "us-east-1c"]
  private_subnets = ["10.81.1.0/24", "10.81.2.0/24", "10.81.3.0/24"]
  public_subnets  = ["10.81.101.0/24", "10.81.102.0/24", "10.81.103.0/24"]
  enable_nat_gateway = true
  tags = {
    ManagedByTerraform = "true"
    Environment = "dev"
  }
}

resource "aws_instance" "app_instance" {
    ami = "ami-00874d747dde814fa"
    instance_type = "t2.micro"
    subnet_id = module.vpc.public_subnets[0]
}



