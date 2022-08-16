resource "aws_security_group" "securitygroup" {
  name = "public-sg"
  description = "Public internet access"
  vpc_id = aws_vpc.terraform-vpc.id
  tags = {
    Name        = "securitygroup"
  }
}
#ingress
resource "aws_security_group_rule" "securitygroup_in_http" {
  type              = "ingress"
  from_port         = 0
  to_port           = 65535
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.securitygroup.id
}
#egress
resource "aws_security_group_rule" "public_in_outbound" {
  type              = "egress"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.securitygroup.id
}