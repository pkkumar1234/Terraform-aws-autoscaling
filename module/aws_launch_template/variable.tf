#-----------------aws launch template-----------------------
variable "name_prefix" {
  description = "name_prefix"
  type = string
}
variable "launch_image_id" {
  description = "launch image id"
  type = string
}
variable "instance_type" {
  description = "instance_ type "
  type = string
}
variable "launch_tags" {
  description = "tag name"
  type = string
}

#-----------------aws autoscaling group-----------------------