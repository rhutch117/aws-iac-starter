terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region  = var.region
  profile = var.profile

  default_tags {
    tags = {
      Name                      = var.app_name
      ApplicationServiceNumber  = var.app_service_number
      BusinessApplicationNumber = var.business_app_number
      Environment               = var.environment
    }
  }
}

