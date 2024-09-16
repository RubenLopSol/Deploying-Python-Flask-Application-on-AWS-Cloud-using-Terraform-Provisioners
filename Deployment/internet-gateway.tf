resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.ruben_vpc.id

  tags = {
    Name = "IGW App-1"
  }
}