output "jenkins_public_ip" {
  value = aws_instance.jenkins.public_ip
  description = "Public IP of Jenkins server"
}

output "app_server_public_ip" {
  value = aws_instance.app_server.public_ip
  description = "Public IP of App server"
}