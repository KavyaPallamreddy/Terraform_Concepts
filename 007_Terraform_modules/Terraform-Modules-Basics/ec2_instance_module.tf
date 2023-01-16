module "ec2_instances" {
  source                 = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 4.0"

  count = 2
  name  = "my-ec2-cluster-${count.index}"
  ami                    = data.aws_ami.amzlinux.id
  instance_type          = "t2.micro"
  key_name               = "terraform-key"
  monitoring             = true
  vpc_security_group_ids = [aws_security_group.vpc-ssh.id, aws_security_group.vpc-web.id]
  subnet_id              = aws_subnet.vpc-dev-public-subnet-1.id
   user_data              = file("apache-install.sh")
  tags = {
    name = "Modules-Demo"
    Terraform   = "true"
    Environment = "dev"
  }
}