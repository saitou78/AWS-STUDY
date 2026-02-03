resource "aws_internet_gateway" "aws-study-igw" {
  vpc_id = aws_vpc.aws-study-vpc.id

  tags = {
    Name = "aws-study-igw"
  }
}