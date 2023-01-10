# Input Variables
variable "aws_region" {
  description = "Region in which AWS resource to be created"
  type        = string
  default     = "us-west-2"

}

variable "db_username" {
    description = "AWS RDS Database Administrator Username"
    type = string
    sensitive = true
    
}

variable "db_password" {
    description = "AWS RDS Database Administrator Password"
    type = string
    sensitive = true
    
}