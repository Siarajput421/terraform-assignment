resource "aws_route_table" "route-table-1" {
  vpc_id = aws_vpc.terraform-vpc.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.natgateway.id
  }
  tags = {
    Name = "RouteTable-1"
  }
}