resource "aws_wafv2_web_acl" "aws-study-web-acl" {
  name  = "aws-study-web-acl"
  scope = "REGIONAL"

  default_action {
    allow {}
  }

  visibility_config {
    sampled_requests_enabled   = true
    cloudwatch_metrics_enabled = true
    metric_name                = "aws-study-web-acl"
  }

  rule {
    name     = "AWSManagedCommonRuleSet"
    priority = 1

    override_action {
      none {}
    }

    statement {
      managed_rule_group_statement {
        vendor_name = "AWS"
        name        = "AWSManagedRulesCommonRuleSet"
      }
    }

    visibility_config {
      sampled_requests_enabled   = true
      cloudwatch_metrics_enabled = true
      metric_name                = "aws-study-common-rule-set"
    }
  }
}

resource "aws_wafv2_web_acl_association" "aws-study-web-acl-association" {
  resource_arn = aws_lb.aws_study_elb.arn
  web_acl_arn  = aws_wafv2_web_acl.aws-study-web-acl.arn
}