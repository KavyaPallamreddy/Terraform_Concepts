# Input Variables
variable "aws_region" {
  description = "Region in which AWS resource to be created"
  type        = string
  default     = "us-west-2"

}

variable "app_name" {
    description = "Application Name"
    type = string
    }
    
variable "environment_name" {
    description = "Environment Name"
    type = string
    }