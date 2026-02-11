run "vpc_plan_test" {   

    command = plan

    assert {
      condition = aws_vpc.aws-study-vpc != null
      error_message = "vpcが作成されていません"
    }

    assert {
      condition = aws_vpc.aws-study-vpc.cidr_block == "10.0.0.0/15"
      error_message = "期待値と異なります"
    }
}