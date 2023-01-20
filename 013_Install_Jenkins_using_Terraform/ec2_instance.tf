resource "aws_instance" "jenkins_server" {
  ami                    = data.aws_ami.amzlinux.id
  instance_type          = var.ec2_instance_type
  key_name               = var.instance_keypair
  
  #user_data              = file("jenkins-install.sh")
  
  count = 1

 
  vpc_security_group_ids = ["${aws_security_group.allow_port.id}"]
  tags = {
    "Name" = "jenkins_server-${count.index}"


  }
}