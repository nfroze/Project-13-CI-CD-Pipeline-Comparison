variable "aws_region" {
  description = "AWS region"
  default     = "eu-west-2"
}

variable "key_name" {
  description = "AWS key pair name"
  default     = "p13"
}

variable "instance_type" {
  description = "EC2 instance type"
  default     = "t2.micro"
}

variable "gitlab_instance_type" {
  description = "EC2 instance type for GitLab"
  default     = "t2.medium" 
}

variable "sonarqube_instance_type" {
  description = "EC2 instance type for SonarQube"
  default     = "t2.medium"
}