output "jenkins_public_ip" {
  value = aws_instance.jenkins.public_ip
  description = "Public IP of Jenkins server"
}

output "gitlab_public_ip" {
  value = aws_instance.gitlab.public_ip
  description = "Public IP of GitLab server"
}

output "sonarqube_public_ip" {
  value = aws_instance.sonarqube.public_ip
  description = "Public IP of SonarQube server"
}

output "dev_public_ip" {
  value = aws_instance.dev.public_ip
  description = "Public IP of Dev environment"
}

output "staging_public_ip" {
  value = aws_instance.staging.public_ip
  description = "Public IP of Staging environment"
}

output "prod_public_ip" {
  value = aws_instance.prod.public_ip
  description = "Public IP of Production environment"
}