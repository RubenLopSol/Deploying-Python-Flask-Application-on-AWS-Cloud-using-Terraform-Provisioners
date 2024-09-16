variable "region" {
  description = "The AWS region to deploy to"
  type        = string
  default     = "us-east-1"
}

variable "vpc-cidr" {
  description = "Value for vpc CIDR"
  type        = string
}

variable "subnet-cidr" {
  description = "Value for subnet CIDR"
  type        = string
}

variable "subnet-az" {
  description = "Value for subnet AZ"
  type        = string
}

variable "ami_id" {
  description = "Value for ami_id"
  type        = string
}

variable "instance_type" {
  description = "Value for Instance_type"
  type        = string
}

variable "key_name" {
  description = "Value for Key name"
  type        = string
}

variable "sg-name" {
  description = "Value for Securyti Group"
  type        = string
}