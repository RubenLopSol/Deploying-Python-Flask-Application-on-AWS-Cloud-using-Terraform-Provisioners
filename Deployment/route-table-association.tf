resource "aws_route_table_association" "RTA" {
  subnet_id      = aws_subnet.ruben_subnet.id
  route_table_id = aws_route_table.RT.id
}