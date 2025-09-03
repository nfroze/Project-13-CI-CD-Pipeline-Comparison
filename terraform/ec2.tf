# Jenkins Instance
resource "aws_instance" "jenkins" {
  ami           = "ami-046c2381f11878233"
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
  ami           = "ami-046c2381f11878233"
  instance_type = var.gitlab_instance_type
  key_name      = var.key_name
  subnet_id     = aws_subnet.public.id
  vpc_security_group_ids = [aws_security_group.cicd_tools.id]

  root_block_device {
    volume_size = 30
  }

  tags = {
    Name = "p13-gitlab"
    Type = "CI/CD"
  }
}

# App Server
resource "aws_instance" "app_server" {
  ami           = "ami-046c2381f11878233"
  instance_type = var.instance_type
  key_name      = var.key_name
  subnet_id     = aws_subnet.public.id
  vpc_security_group_ids = [aws_security_group.app_servers.id]

  tags = {
    Name = "p13-app-server"
    Type = "Application"
  }
}