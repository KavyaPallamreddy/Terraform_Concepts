resource "aws_instance" "my-ec2-vm" {
  ami                    = data.aws_ami.amzlinux.id
  instance_type          = var.ec2_instance_type
  key_name               = "terraform-key"
  
  user_data              = file("apache-install.sh")
  
  
 /*
    user_data              = <<-EOF
    #!/bin/bash
    sudo yum update -y
    sudo yum install httpd -y
    sudo systemctl enable httpd
    sudo systemctl start httpd
    echo "<h1>Welcome to Terraform_class ! AWS Infra created using Terraform in us-west-2 Region</h1>" > /var/www/html/index.html
    EOF
 */
 
 
  vpc_security_group_ids = [aws_security_group.vpc-ssh.id, aws_security_group.vpc-web.id]
  tags = {
    "Name" = "myec2vm"
    "demotag" = "refreshtest"


  }
}