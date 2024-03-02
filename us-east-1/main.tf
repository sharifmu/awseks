provider "aws" {
  region = locals.region
  #  assume_role {
  #    role_arn = "arn:aws:iam::941374747598:role/DevOps"
  #  }
}
/*
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.20.0"
    }
  }


  backend "s3" {
    bucket         = "awseks-terraform-states"
    key            = "awseks/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "mu-microsevice-dev-terraform-backend"
#    assume_role = {
#       role_arn = "arn:aws:iam::941374747598:role/DevOps"
#   }
    encrypt = true
  }
}
*/
data "aws_caller_identity" "current" {}

locals {
  region     = var.region
  account_no = data.aws_caller_identity.current.account_id
}