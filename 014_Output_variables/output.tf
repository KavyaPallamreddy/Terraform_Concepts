output "ec2_instance_publicip" {
    description = "EC2 Instance Public IP"
    value = aws_instance.my-ec2-vm.public_ip
    }



output "ec2_instance_privateip" {
    description = "EC2 Instance PrivateIP"
    value = aws_instance.my-ec2-vm.private_ip
    }
    
    
output "ec2_security_group" {
    description = "EC2 Security Groups"
    value = aws_instance.my-ec2-vm.security_groups
    }
    
output "ec2_publicdns" {
    description = "Public DNS URL of an ec2 Instance"
    value = "http://${aws_instance.my-ec2-vm.public_dns}"
    sensitive = true
    }    