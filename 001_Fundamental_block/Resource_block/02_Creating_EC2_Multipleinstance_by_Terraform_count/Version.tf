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
}

# Provider Block
provider "aws" {
  region  = "us-west-2"
  profile = "default" # Defining it for default profile is Optional
}