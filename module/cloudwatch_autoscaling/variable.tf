variable "AutoScalingGroup_Name" {
    type        = string
    description = "Auto Scaling Group Name"

}
variable "alarm_actions_scale_in" {
  type        = string
    description = "Scale in"
}
variable "alarm_actions_scale_out" {
  type        = string
    description = "Scale out"
}