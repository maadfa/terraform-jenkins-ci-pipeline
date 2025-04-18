provider "aws" {
  region = "us-east-1"
}

module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  name    = "devops-vpc"
  cidr    = "10.0.0.0/16"
  azs     = ["us-east-1a", "us-east-1b"]
  public_subnets  = ["10.0.1.0/24", "10.0.2.0/24"]
}

resource "aws_ecr_repository" "app_repo" {
  name = "devops-app"
}

# ECS cluster
resource "aws_ecs_cluster" "devops_cluster" {
  name = "devops-cluster"
}
