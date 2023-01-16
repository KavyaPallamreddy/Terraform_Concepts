# Output variable definitions

output "ec2_instance_public_ip" {
  description = "Public IP Addressess of EC2 Instances"
  value = module.ec2_instances[*].public_ip
}

output "ec2_instance_public_dns" {
  description = "Public DNS for EC2 Instances"
  value = module.ec2_instances[*].public_dns
}

output "ec2_instance_private_ip" {
  description = "Private IP Addressess of EC2 Instances"
  value = module.ec2_instances[*].private_ip
}
