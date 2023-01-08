# Resource Block
# Resource-1: Create VPC
resource "aws_vpc" "vpc-us-east-1" {
  cidr_block = "10.0.0.0/16"
  provider = aws.aws-east-1
  tags = {
    "Name" = "vpc-us-east-1"
  }
}