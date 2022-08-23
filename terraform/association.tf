resource "aws_route_table_association" "forPublic" {
  subnet_id      = aws_subnet.terrapublicpublic.id
  route_table_id = aws_route_table.terrapublic.id
}
resource "aws_route_table_association" "forPrivate" {
  subnet_id      = aws_subnet.terraprivate.id
  route_table_id = aws_route_table.terraprivate.id
}
