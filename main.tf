module "aws_launch_template" {
    source = "./module/aws_launch_template"
    name_prefix=var.loc_name_prefix
    launch_image_id=var.loc_launch_image_id
    instance_type=var.loc_instance_type
    launch_tags=var.loc_launch_tags 
}
module "aws_autoscaling_group" {
  source = "./module/aws_autoscaling_group"
  desired_capacity=var.loc_desired_capacity
  max_size=var.loc_max_size
  min_size=var.loc_min_size
  autoscaling_tag=var.loc_autoscaling_tag
  launch_template_id = module.aws_launch_template.launchid
}
module "cloudwatch_autoscaling" {
  source = "./module/cloudwatch_autoscaling"
  AutoScalingGroup_Name=module.aws_autoscaling_group.auto_scal_name
  alarm_actions_scale_in=module.aws_autoscaling_group.aws_scale_in
  alarm_actions_scale_out=module.aws_autoscaling_group.aws_scale_out
}

