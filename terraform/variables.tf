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