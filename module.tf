resource "aws_launch_configuration" "as_conf" {
  name_prefix   = var.name_prefix 
  image_id      = var.image_id
  instance_type = var.instance_type
}
resource "aws_autoscaling_group" "bar" {
  availability_zones = ["us-east-1c"]
  name                 = "terraform-asg-example"
  launch_configuration = aws_launch_configuration.as_conf.name
    desired_capacity   = 1
    min_size             = 1
    max_size             = 2
}
