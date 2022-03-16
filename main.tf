module "vpc" {
  source = "terraform-aws-modules/vpc/aws"
  version = "3.11.0"

  name = var.vpc_name
  cidr = var.vpc_cidr

  azs             = var.vpc_AZ
  private_subnets = var.vpc_private
  public_subnets  = var.vpc_public

  enable_nat_gateway = var.vpc_NAT
  enable_vpn_gateway = var.vpc_VPN

  tags = {
    Terraform = "true"
    Environment = "dev"
  }
}

/*

     ############ Not using for now ###########

module "ec2_instances" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 3.0"

  
  name                   = var.EC2_Name
  ami                    = var.EC2_AMI
  instance_type          = var.EC2_type
  key_name               = var.EC2_KeyName
  vpc_security_group_ids = [aws_security_group.ec2-sg.id]
  subnet_id              = module.vpc.public_subnets[0]
  
  user_data = <<-EOF
              #!/bin/bash
              sudo apt-get update
              sudo apt-get install -y apache2
              sudo systemctl start apache2
              sudo systemctl enable apache2
              echo "The page was created by the user data" | sudo tee /var/www/html/index.html
              EOF
  
  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}
*/