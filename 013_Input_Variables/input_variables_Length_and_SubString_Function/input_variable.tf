# Input Variables
variable "aws_region" {
  description = "Region in which AWS resource to be created"
  type        = string
  default     = "us-west-2"

}

variable "ec2_ami_id" {
  description = "EC2 ami is created"
  type        = string
  default     = "ami-0ceecbb0f30a902a6"
  validation {
      condition = length(var.ec2_ami_id) > 4 && substr(var.ec2_ami_id, 0,4) == "ami-"
      error_message = "The EC2_ami_id value must be a vaild id, starting with \"ami-\"."
  }

}

variable "ec2_instance_count" {
  description = "EC2 Instance count "
  type        = number
  default     = 1

}

variable "ec2_instance_type" {
  description = "EC2 Instance type "
  type        = string
  default     = "t2.micro"


}
 