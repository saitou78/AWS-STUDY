resource "aws_route_table_association" "public" {
  for_each = {
    "ap-northeast-1a" = aws_subnet.aws-study-subnet-1a.id,
    "ap-northeast-1c" = aws_subnet.aws-study-subnet-1c.id,
  }
  subnet_id      = each.value
  route_table_id = aws_route_table.aws-study-route-table.id
}