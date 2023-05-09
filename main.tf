#terraform {
#  required_providers {
#    aws = {
#      source  = "hashicorp/aws"
#      version = "~> 4.0.0"
#    }
#  }
#}

provider "aws" {
  region = var.region
}

module "s3-webapp" {
  source  = "github.com/ylehilds/terraform-aws-s3-webapp?ref=v1.0.2"
  name   = var.name
  region = var.region
  prefix = var.prefix
}
