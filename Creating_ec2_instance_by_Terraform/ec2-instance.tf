# Resource Block
resource "aws_instance" "my-ec2-vm" {
# Amazon Linux in us-west-2, update as per your region
  ami           = "ami-0ceecbb0f30a902a6" 
  instance_type = "t2.micro"
  #availability_zone = "us-west-2c"
  availability_zone = "us-west-2b"
  tags = {
      "Name" = "web"
      "tag1" = "update-test-1"
    
  }
}