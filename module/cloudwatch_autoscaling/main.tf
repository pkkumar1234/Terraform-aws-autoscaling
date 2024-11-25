resource "aws_cloudwatch_metric_alarm" "high_cpu" {
  alarm_name          = "HighCPUAlarm"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 2
  metric_name         = "CPUUtilization"
  namespace           = "AWS/EC2"
  period              = 300
  statistic           = "Average"
  threshold           = 30

  dimensions = {
    AutoScalingGroupName = var.AutoScalingGroup_Name
  }
    alarm_actions = [var.alarm_actions_scale_out]
  
}

resource "aws_cloudwatch_metric_alarm" "low_cpu" {
  alarm_name          = "LowCPUAlarm"
  comparison_operator = "LessThanOrEqualToThreshold"
  evaluation_periods  = 2
  metric_name         = "CPUUtilization"
  namespace           = "AWS/EC2"
  period              = 300
  statistic           = "Average"
  threshold           = 20

  dimensions = {
    AutoScalingGroupName = var.AutoScalingGroup_Name
  }

  alarm_actions = [var.alarm_actions_scale_in]
}
