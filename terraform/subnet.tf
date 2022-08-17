#public subnet
resource "aws_subnet" "terrapublicpublic" {
  vpc_id     = aws_vpc.terraform-vpc.id
  cidr_block = "10.0.1.0/24"
  tags = {
    Name = "terra-publicSubnet"
  }
}

#private subnet
resource "aws_subnet" "terraprivate" {
  vpc_id     = aws_vpc.terraform-vpc.id
  cidr_block = "10.0.2.0/24"
  tags = {
    Name = "terra-PrivateSubnet"
  }
}
resource "aws_eip" "nat_eip"{
  vpc=true
}