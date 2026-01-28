resource "aws_subnet" "aws-study-subnet-1a" {
  vpc_id                  = aws_vpc.aws-study-vpc.id
  cidr_block              = "10.0.1.0/24"
  availability_zone       = "ap-northeast-1a"
  map_public_ip_on_launch = true

  tags = {
    Name = "aws-study-subnet-1a"
  }
}

resource "aws_subnet" "aws-study-subnet-1c" {
  vpc_id                  = aws_vpc.aws-study-vpc.id
  cidr_block              = "10.0.2.0/24"
  availability_zone       = "ap-northeast-1c"
  map_public_ip_on_launch = true

  tags = {
    Name = "aws-study-subnet-1c"
  }
}