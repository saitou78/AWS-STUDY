run "subnet_plan_test" {

  command = plan

  assert {
    condition     = aws_subnet.aws-study-subnet-1a.cidr_block == "10.0.1.0/24"
    error_message = "サブネットのCIDRブロックが正しくありません"
  }

  assert {
    condition     = aws_subnet.aws-study-subnet-1a.availability_zone == "ap-northeast-1a"
    error_message = "サブネットのアベイラビリティゾーンが正しくありません"
  }

  assert {
    condition     = aws_subnet.aws-study-subnet-1c.cidr_block == "10.0.2.0/24"
    error_message = "サブネットのCIDRブロックが正しくありません"
  }

  assert {
    condition     = aws_subnet.aws-study-subnet-1c.availability_zone == "ap-northeast-1c"
    error_message = "サブネットのアベイラビリティゾーンが正しくありません"
  }
}