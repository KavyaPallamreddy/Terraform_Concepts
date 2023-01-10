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

}

variable "ec2_instance_count" {
  description = "EC2 Instance count "
  type        = number
  default     = 1

}

/*
variable "ec2_instance_type" {
  description = "EC2 Instance type "
  type        = list(string)
  default     = ["t2.micro", "t3.small", "t3.large"]


}
*/
variable "ec2_instance_tags" {
    description = "EC2 Instance Tags"
    type = map(string)
    default = {
        "Name" = "ec2-web"
        "Tier" = "Web"
        }
       }
       
variable "ec2_instance_type_map" {
    description = "EC2 Instance type "
    type        = map(string)
    default     = {
        "small-apps" = "t3.micro"
        "medium-apps" = "t3.medium"
        "big-apps" = "t3.large"
        }
      }
    
    
    