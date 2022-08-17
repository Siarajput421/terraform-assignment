resource "aws_route_table_association" "forPublic" {
  subnet_id      = aws_subnet.public.id
  route_table_id = aws_route_table.public.id
}
resource "aws_route_table_association" "forPrivate" {
  subnet_id      = aws_subnet.private.id
  route_table_id = aws_route_table.private.id
}