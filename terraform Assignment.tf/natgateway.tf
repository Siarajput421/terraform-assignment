resource "aws_nat_gateway" "natgateway" {
  allocation_id = aws_eip.nat_eip.id
  subnet_id     = aws_subnet.subnet-1.id
  tags = {
    Name = "natgateway"
  }
}