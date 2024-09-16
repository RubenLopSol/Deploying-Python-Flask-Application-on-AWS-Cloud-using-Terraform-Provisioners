resource "aws_subnet" "ruben_subnet" {
  vpc_id = aws_vpc.ruben_vpc.id
  cidr_block = var.subnet-cidr
  availability_zone = var.subnet-az
  map_public_ip_on_launch = true  # Use subnet for instance launch
}