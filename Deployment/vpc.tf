resource "aws_vpc" "ruben_vpc" {
  cidr_block = var.vpc-cidr

  tags = {
    Name = "VPC App-1"
  }
}