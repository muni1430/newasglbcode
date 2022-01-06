provider "aws" {
  profile = "default"
  region = "us-east-1"
}
resource "aws_launch_configuration" "as_conf" {
  name_prefix   = var.name_prefix 
  image_id      = var.image_id
  instance_type = var.instance_type
}
resource "aws_autoscaling_group" "bar" {
  availability_zones = ["us-east-1c"]
  desired_capacity   = 1
  max_size           = 1
  min_size           = 1
  launch_template {
    id      = aws_launch_template.foobar.id
    version = "$Latest"
  }
}
