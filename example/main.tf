terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

locals {
  aws_region = "us-east-1"
  common_tags = {
    team    = "tech-sre"
    owner   = "tech-tweakers"
    product = "terraform-states"
    env     = "development"
  }
}

provider "aws" {
  region = local.aws_region
}

module "s3-bucket" {
  source     = "../"
  tags       = local.common_tags
}
