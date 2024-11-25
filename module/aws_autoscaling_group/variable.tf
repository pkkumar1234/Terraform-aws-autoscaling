variable "desired_capacity" {
  description = "desired_capacity"
  type = string
}
variable "max_size" {
  description = "max_size"
  type = string
}
variable "min_size" {
  description = "min_size"
  type = string
}
variable "autoscaling_tag" {
  description = "auto scaling tag name"
  type = string
}
variable "launch_template_id" {
  type        = string
  description = "The ID of the launch template"
}
# variable "availability_zones_name" {
#   type        = string
#   description = "auto scaling group availability_zones_name"
# }
