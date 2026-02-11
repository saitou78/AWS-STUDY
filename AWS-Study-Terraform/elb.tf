resource "aws_lb" "aws_study_elb" {
  name               = "aws-study-elb"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.sg-ec2.id]
  subnets = [
    aws_subnet.aws-study-subnet-1a.id,
    aws_subnet.aws-study-subnet-1c.id,
  ]

  tags = {
    Name = "aws-study-elb"
  }
}