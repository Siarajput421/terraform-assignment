#natgatway
resource "aws_nat_gateway" "myNatGateway" {
  allocation_id = aws_eip.nat_eip.id
  subnet_id         = aws_subnet.terrapublicpublic.id
  tags = {
    Name = "myNatGateway"
  }
}
