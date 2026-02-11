resource "aws_lb_target_group" "aws_study_target_group" {
  name     = "aws-study-target-group"
  port     = 80
  protocol = "HTTP"
  vpc_id   = aws_vpc.aws-study-vpc.id

  health_check {
    path                = "/"
    protocol            = "HTTP"
    matcher             = "200"
    interval            = 10
    timeout             = 5
    healthy_threshold   = 2
    unhealthy_threshold = 2
  }

  tags = {
    Name = "aws-study-target-group"
  }
}

resource "aws_lb_target_group_attachment" "aws_study_target_group_attachment" {
  target_group_arn = aws_lb_target_group.aws_study_target_group.arn
  target_id        = aws_instance.aws-study-ec2.id
  port             = 80

}

resource "aws_lb_listener" "aws_study_listener" {
  load_balancer_arn = aws_lb.aws_study_elb.arn
  port              = 80
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.aws_study_target_group.arn
  }
}