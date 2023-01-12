# Input Variables
variable "aws_region" {
  description = "Region in which AWS resource to be created"
  type        = string
  default     = "us-west-2"

}
/*
variable "ec2_ami_id" {
  description = "EC2 ami is created"
  type        = string
  default     = "ami-0ceecbb0f30a902a6"

}
*/

variable "ec2_instance_type" {
  description = "EC2 Instance type "
  type        = string
  default     = "t2.micro"


}
 