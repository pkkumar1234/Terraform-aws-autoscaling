        #--------------aws launch tempate----------------
variable "loc_name_prefix" {
  description = "name_prefix"
  type = string
  #default = "demo-launch-template"
}
variable "loc_launch_image_id" {
  description = "launch image id"
  type = string
  #default = "ami-09b0a86a2c84101e1"
}
variable "loc_instance_type" {
  description = "instance_ type "
  type = string
  #default = "t2.micro"
}
variable "loc_launch_tags" {
  description = "tag name"
  type = string
  #default = "demo-instance"
}
#--------------End aws launch tempate----------------

#------------------aws_autoscaling_group-----------------------

variable "loc_desired_capacity" {
  description = "desired_capacity"
  type = string
  #default = "2"
}
variable "loc_max_size" {
  description = "max_size"
  type = string
  #default = "6"
}
variable "loc_min_size" {
  description = "min_size"
  type = string
  #default = "1"
}
variable "loc_autoscaling_tag" {
  description = "auto scaling tag name"
  type = string
  #default = "autoscal-instance"
}
 variable "loc-availability_zones_name" {
   type        = string
   description = "auto scaling group availability_zones_name"
   default = "ap-south-1a"
 }
#------------------End_autoscaling_group-----------------------
