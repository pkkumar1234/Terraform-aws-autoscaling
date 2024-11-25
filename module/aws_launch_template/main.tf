resource "aws_launch_template" "launch_example" {
  name_prefix   = var.name_prefix
  image_id      = var.launch_image_id
  instance_type = var.instance_type

  lifecycle {
    create_before_destroy = true
  }

  tag_specifications {
    resource_type = "instance"

    tags = {
      Name = var.launch_tags
    }
  }
}

