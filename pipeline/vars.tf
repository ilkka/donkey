variable "aws_access_key" {
  description = "The access key of the role to deploy the infrastructure as"
}

variable "aws_secret_key" {
  description = "The secret key of the role to deploy the infrastructure as"
}

variable "aws_region" {
  description = "The AWS region for the infrastructure"
  default     = "eu-west-1"
}
