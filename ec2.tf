

resource "aws_instance" "Jenkins" {
  ami                    = var.ami
  instance_type          = var.instance_type
  vpc_security_group_ids = [aws_security_group.jenkins_sg.id]
  key_name               = "dev-wdp"
  user_data              = file("${path.module}/jenkins-install.sh")
  subnet_id              = module.jenkins-vpc.public_subnets[0]
  tags = {
    "Name" = var.instance-name
    "env"  = var.env
    "Team" = var.Team
  }
}                              