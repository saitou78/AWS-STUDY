run "ec2_plan_test" {
  command = plan

  assert {
    condition     = aws_instance.aws-study-ec2 != null
    error_message = "EC2インスタンスが作成されていません"
  }

  assert {
    condition     = aws_instance.aws-study-ec2.instance_type == "t2.micro"
    error_message = "インスタンスタイプがt2.microではありません"
  }
}