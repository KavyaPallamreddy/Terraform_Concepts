resource "aws_instance" "my-ec2-vm" {
  ami           = "ami-0ceecbb0f30a902a6" 
  instance_type = "t2.micro"
  availability_zone = "us-west-2c"
  key_name = "terraform-key"
  subnet_id = aws_subnet.vpc-dev-public-subnet-1.id
  vpc_security_group_ids = [ aws_security_group.dev-vpc-sg.id ]
  #user_data = file("apache-install.sh")
  user_data = <<-EOF
    #!/bin/bash
    sudo yum update -y
    sudo yum install httpd -y
    sudo systemctl enable httpd
    sudo systemctl start httpd
    echo "<h1>Welcome to Terraform_class ! AWS Infra created using Terraform in us-west-2 Region</h1>" > /var/www/html/index.html
    EOF
  
  tags = {
      "Name" = "myec2vm"
      
    
  }
}
      
      
      
  