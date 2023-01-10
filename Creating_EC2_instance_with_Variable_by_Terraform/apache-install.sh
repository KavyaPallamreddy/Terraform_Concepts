#!/bin/bash
    sudo yum update -y
    sudo yum install httpd -y
    sudo systemctl enable httpd
    sudo systemctl start httpd
    echo "<h1>Welcome to Terraform_class ! AWS Infra created using Terraform in us-west-2 Region</h1>" > /var/www/html/index.html
    