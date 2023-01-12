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
    null = {
      source = "hashicorp/null"
      version = "~> 3.2.1"
    }
    time = {
      source = "hashicorp/time"
      version = "0.9.1"
    }   
  }
  
  }
# Provider Block
provider "aws" {
  region  = var.aws_region
  profile = "default" # Defining it for default profile is Optional
}