variable "region" {
  description = "The AWS region to deploy to"
  type        = string
  default     = "us-east-1"  
}

variable "vpc-cidr" {
  description = "Value for vpc CIDR"
  type = string
}

variable "subnet-cidr" {
  description = "Value for subnet CIDR"
}

variable "subnet-az" {
  description = "Value for subnet AZ"
}