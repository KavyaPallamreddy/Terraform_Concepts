# Terraform Settings Block
terraform {
  # Terraform Version
  required_version = "~> 1.3.7"
  required_providers {
    # AWS Provider 
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }

  }
  
  cloud {
    organization = "kavyareddy"

    workspaces {
      name = "state-migration"
    }
  }
}


# Provider Block
provider "aws" {
  region  = var.aws_region
  
}