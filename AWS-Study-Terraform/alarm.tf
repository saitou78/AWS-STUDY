resource "aws_cloudwatch_metric_alarm" "ec2_cpu_alarm" {
  alarm_name        = "ec2-cpu-alarm"
  alarm_description = "aws-study EC2のCPU使用率が10％以上になりました"

  namespace   = "AWS/EC2"
  metric_name = "CPUUtilization"
  statistic   = "Average"

  period              = 300
  evaluation_periods  = 1
  threshold           = 10
  comparison_operator = "GreaterThanThreshold"
  unit                = "Percent"

  dimensions = {
    InstanceId = aws_instance.aws-study-ec2.id
  }
}