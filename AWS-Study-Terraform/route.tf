resource "aws_route_table" "aws-study-route-table" {
  vpc_id = aws_vpc.aws-study-vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.aws-study-igw.id
  }

  tags = {
    Name = "aws-study-route-table"
  }
}