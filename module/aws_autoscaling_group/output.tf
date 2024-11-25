output "auto_scal_name" {
  value = aws_autoscaling_group.example.name
}

output "aws_scale_out" {
  value = aws_autoscaling_policy.scale_out.arn
}
output "aws_scale_in" {
  value = aws_autoscaling_policy.scale_in.arn
}