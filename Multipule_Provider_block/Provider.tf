# Terraform Block
terraform {
  required_version = "~> 1.3.7"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }    
  }
}

# Provider-1 for us-west-2(Default Provider)
provider "aws" {
   region = "us-west-2"
   profile= "default"
   }
   
# Provider-1 for us-east-1
provider "aws" {
   region = "us-east-1"
   profile= "default"
   alias = "aws-east-1"
   }