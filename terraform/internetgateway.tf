#internetgateway
resource "aws_internet_gateway" "terraInternetGateway" {
  vpc_id = aws_vpc.terraform-vpc.id
  tags = {
    Name = "terrainternetgw"
  }
}