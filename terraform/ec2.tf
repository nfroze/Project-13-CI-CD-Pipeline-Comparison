# Jenkins Instance
resource "aws_instance" "jenkins" {
  ami           = "ami-0e8d228ad90af673a"  # Ubuntu 22.04 in eu-west-2
  instance_type = var.instance_type
  key_name      = var.key_name
  subnet_id     = aws_subnet.public.id
  vpc_security_group_ids = [aws_security_group.cicd_tools.id]

  tags = {
    Name = "p13-jenkins"
    Type = "CI/CD"
  }
}

# GitLab Instance
resource "aws_instance" "gitlab" {
  ami           = "ami-0e8d228ad90af673a"
  instance_type = var.instance_type
  key_name      = var.key_name
  subnet_id     = aws_subnet.public.id
  vpc_security_group_ids = [aws_security_group.cicd_tools.id]

  tags = {
    Name = "p13-gitlab"
    Type = "CI/CD"
  }
}

# SonarQube Instance
resource "aws_instance" "sonarqube" {
  ami           = "ami-0e8d228ad90af673a"
  instance_type = var.instance_type
  key_name      = var.key_name
  subnet_id     = aws_subnet.public.id
  vpc_security_group_ids = [aws_security_group.cicd_tools.id]

  tags = {
    Name = "p13-sonarqube"
    Type = "CI/CD"
  }
}

# Dev Environment
resource "aws_instance" "dev" {
  ami           = "ami-0e8d228ad90af673a"
  instance_type = var.instance_type
  key_name      = var.key_name
  subnet_id     = aws_subnet.public.id
  vpc_security_group_ids = [aws_security_group.app_servers.id]

  tags = {
    Name = "p13-dev"
    Type = "Environment"
  }
}

# Staging Environment
resource "aws_instance" "staging" {
  ami           = "ami-0e8d228ad90af673a"
  instance_type = var.instance_type
  key_name      = var.key_name
  subnet_id     = aws_subnet.public.id
  vpc_security_group_ids = [aws_security_group.app_servers.id]

  tags = {
    Name = "p13-staging"
    Type = "Environment"
  }
}

# Production Environment
resource "aws_instance" "prod" {
  ami           = "ami-0e8d228ad90af673a"
  instance_type = var.instance_type
  key_name      = var.key_name
  subnet_id     = aws_subnet.public.id
  vpc_security_group_ids = [aws_security_group.app_servers.id]

  tags = {
    Name = "p13-prod"
    Type = "Environment"
  }
}