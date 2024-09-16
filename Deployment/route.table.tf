resource "aws_route_table" "RT" {
  vpc_id = aws_vpc.ruben_vpc.id

  route = {
    cidr_blocks = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }
}